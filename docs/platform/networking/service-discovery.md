---
title: "Service Discovery"
description: "The mmesh platform implements a service discovery system that publishes every endpoint on an internal DNS subsystem with the '.mmesh.local' domain suffix."
tags:
  - networking
  - dns
---

# Service Discovery

**mmesh** has a service discovery system that publishes every node endpoint in an internal DNS subsystem which is enabled in every node. This provides an easy way to access all nodes without having to remember IP addresses.

The **mmesh** internal DNS generates a fully qualified domain name for every node on your network. 

The fully qualified domain name is made up of two parts:

![mmesh-node FQDN](../assets/images/mmesh-node-fqdn.png)

In the case of Kubernetes integration, the fully qualified domain name is made up of three parts:

![mmesh-node K8s FQDN](../assets/images/mmesh-k8s-fqdn.png)

You can query this internal DNS service by default on the port `UDP/53535` of every mmesh node:

```
dig @<NODE-IP> -p 53535 A <FQDN>
```
![dig DNS request](../assets/images/dig-dns-request.png)

!!! Information

    See [Node Configuration Reference](mmesh-node.yml.md) section for more information about the `mmesh-node.yml` file.

## DNS Integrations

You can easily integrate the `.mmesh.local` domain into your DNS infrastructure by configuring the `mmesh.local` domain as a forward zone.

### Dnsmasq

[Dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html) is a lightweight, open-source DNS (Domain Name System) forwarder and DHCP (Dynamic Host Configuration Protocol) server. It is designed to provide DNS and DHCP services for a small network or a single machine. Dnsmasq is commonly used in home routers, small networks, and as a local DNS resolver on individual computers.

If you want to resolve the `.mmesh.local` domain from your network, you need to configure a new forward zone in your DNS servers:

1. You should edit the `/etc/dnsmasq.conf` file and include this code:

    ```
    #dont use hosts nameservers
    no-resolv
    #use following default nameservers
    server=1.1.1.1
    server=8.8.8.8
    strict-order
    #serve all *.mmesh.local queries using a specific nameserver 
    server=/mmesh.local/<NODE1-IP>#53535
    server=/mmesh.local/<NODE2-IP>#53535
    ``` 
    !!! Warning 

        Replace the `<NODE1-IP>` and `<NODE2-IP>` variables with the IP addresses assigned to the nodes that are reachable by the DNS servers.

2. Restarting dnsmasq service:
    
    ``` bash
    sudo systemctl restart dnsmasq
    ```

### Bind9

[BIND 9](https://www.isc.org/bind/) is the first, oldest, and most commonly deployed solution for DNS servers. It has evolved to be a very flexible, full-featured DNS system. More network engineers are already familiar with `BIND 9` than with any other system.

If you want to resolve the `.mmesh.local` domain from your infrastructure, you need to configure a new forward zone in your DNS servers:

1. You should edit the `/etc/bind/named.conf.local` file and include this code:

    ```
    zone "mmesh.local" {
      type forward;
      forward only;
      forwarders { <NODE1-IP> port 53535; <NODE2-IP> port 53535; };
    };
    ```

    !!! Warning 
  
        Replace the `<NODE1-IP>` and `<NODE2-IP>` variables with the IP addresses assigned to the nodes that are reachable by the DNS servers.

    !!! Information
    
        If you have errors like `no valid RRSIG resolving` and `broken trust chain resolving` you should change the param `dnssec-validation` in `/etc/bind/named.conf.options` from `auto` to `yes`.

2. Run the following command to check the syntax of the `named.conf*` files:

    ``` bash
    sudo named-checkconf
    ```

3. Restarting BIND:
   
    ``` bash
    sudo systemctl restart bind9
    ```

### Kubernetes DNS

[CoreDNS](https://coredns.io/) is a flexible and extensible DNS server that is used as the default DNS provider in Kubernetes clusters. It handles DNS resolution for services and pods within the cluster. CoreDNS can configure stub domains and upstream nameservers using the [forward plugin](https://coredns.io/plugins/forward/).

If you want to resolve `.mmesh.local` domain inside the pods, you need to customize CoreDNS:

1. Get CoreDNS current configuration:

    ```bash
    kubectl -n kube-system get cm coredns -o yaml > coredns.yaml
    ```

2. Customize CoreDNS configuration and add the `.mmesh.local` zone to `coredns.yaml`:

    ``` yaml
    data:
      Corefile: |

        .:53 {
            errors
            health {
               lameduck 5s
            }
            ready
            kubernetes cluster.local in-addr.arpa ip6.arpa {
               pods insecure
               fallthrough in-addr.arpa ip6.arpa
               ttl 30
            }
            prometheus :9153
            forward . /etc/resolv.conf {
               max_concurrent 1000
            }
            cache 30
            loop
            reload
            loadbalance
        }

        ## Add .mmesh.local zone
        mmesh.local {
          forward . <NODE1-IP>:53535 <NODE1-IP>:53535 {
            policy sequential
          }
        }
    ```

    !!! Warning 
  
        Replace `<NODE1-IP>` and `<NODE2-IP>` variables with the IP Addresses assigned by IPAM of mmesh to the nodes.

3. Apply the new changes in the cluster:

    ```bash
    kubectl rollout restart -n kube-system deployment/coredns
    ```

4. Reload CoreDNS config:

    ```bash
    kubectl rollout restart -n kube-system deployment/coredns
    ```

5. Finally, we need to connect `coredns` workload to the mmesh virtual private network:

    ```bash
    mmeshctl k8s workload connect
    ```

    !!! Information
        
        You should select the `tenant`, `network` and `subnet` previously defined in your mmesh private virtual topology.

  ![coredns-workload-connected](../assets/images/coredns-connected.png)


Now we can access the [mmesh dashboard](https://mmesh.io/app) to verify that the nodes are correctly connected to the subnet. 