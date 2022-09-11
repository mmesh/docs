---
tags:
  - networking
  - security
---

# Nodes

A `node` is any system connected to a mmesh `subnet`.

It can be a VM, a Kubernetes Pod, a bare-metal server, a docker container, a laptop, a workstation...

At maximum, you can have 255 nodes connected to a mmesh subnet.

A node will be assigned at least one IP address from the subnet range where it's connected. This IP can be manually or dynamically assigned.

> See [IP Address Management](/docs/platform/networking/topology/#subnet) section for more information about addressing.

A node will also have a DNS name which can be also manually configured in the `mmesh-node.yml` file. In case it is not specified, the node ID will be used.

> See [Node Configuration Reference](/docs/platform/reference/mmesh-node.yml/) section for more information about the `mmesh-node.yml` file.

## Endpoints

In mmesh terminology, the node IP along with the internal DNS name corresponds with a node's `endpoint`.

A node will have at least one endpoint, although in some scenarios, as when the node is configured as a _`Kubernetes Gateway`_, it can have more.

## Kubernetes Gateway

You can configure a node as a _`Kubernetes Gateway`_ by enabling the option in the `mmesh-node.yml` file.

With this option enabled, a node can **forward traffic from the mmesh subnet to _Kubernetes ClusterIP Services_**.

With this configuration each of these ClusterIP Services will become an endpoint with its own IP and internal DNS name.

Learn more about mmesh nodes acting as Kubernetes gateways [here](/docs/platform/kubernetes/services/).

## Service Discovery

mmesh has a service discovery system that publishes every node endpoint in an internal DNS subsystem which is enabled in every node.

You can query this internal DNS service by default on the port `UDP/5353`.

> See [DNS Integration](/docs/platform/networking/service-discovery/) section for more information on how to integrate the mmesh service discovery system with your DNS infrastructure.

## Remote Management Features

The mmesh CLI supports some functions related to the remote management of your nodes.

These features are intended to simplify how you can do some basic tasks on your nodes, but can be disabled per-node in the `agent.management` section of the `mmesh-node.yml` file.

```yaml
# mmesh agent configuration
agent:
  # [...]
  # mmesh remote management permissions
  management:
    # [...]
    disableExec: false
    disableTransfer: false
    disablePortForwarding: false
```

The mmesh CLI commands, inspired by the ones in [Kubernetes kubectl](https://kubernetes.io/docs/reference/kubectl/overview/), which are affected by that configuration are the following:

- `mmeshctl exec`: Execute command on target node.
- `mmeshctl cp`: Transfer file and directories between nodes.
- `mmeshctl port-fwd`: Forward local TCP port to target node.

Browse the [Nodes Administration](/docs/platform/administration/nodes/#remote-management-features) section to learn more on this topic.

### Extended Security Credentials

In addition to other [authentication](/docs/platform/iam/authentication/), [authorization](/docs/platform/iam/authorization/) and [admission control](/docs/platform/networking/topology/#admission-control) features, mmesh supports an extended mechanism to further increase the security and the level of control you have over your nodes.

In the `management` section of the `mmesh-node.yml` you can add two additional credentials to authenticate users executing the commands described above.

```yaml
# mmesh agent configuration
agent:
# [...]
# mmesh remote management permissions
management:
    auth:
    psk: "<your-secret-preshared-key>"
    securityToken: "<your-secret-security-token>"
    # [...]
```

> See [Node Configuration Reference](/docs/platform/reference/mmesh-node.yml/) section for more information about the `mmesh-node.yml` file.

If a mmesh node is configured with those extended auth credentials under `agent.management.auth`, then it will be necessary for the users to include those credentials too in their `mmeshctl.yml` file in order to get access to the node with the commands `mmeshctl exec`, `mmeshctl cp` and `mmeshctl port-fwd`.

```yaml
# mmeshctl configuration

#[...]

agent:
  management:
    auth:
      psk: "<your-secret-preshared-key>"
      securityToken: "<your-secret-security-token>"
```

> See [CLI Configuration Reference](/docs/platform/reference/mmeshctl.yml/) section for more information about the `mmeshctl.yml` file.

## Administration

### Nodes Management

Browse the [Nodes Administration](/docs/platform/administration/nodes/) section to learn how to manage your nodes.
