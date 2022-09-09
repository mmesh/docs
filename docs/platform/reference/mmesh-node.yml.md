# Node Configuration Reference

The file `mmesh-node.yml` is used to configure the _mmesh-node_.

> See the [Node Installation Guide](/docs/platform/installation/nodes) for detailed information about the _mmesh-node_ installation on different platforms.

```yaml
# mmesh-node configuration
#

loglevel: INFO # TRACE | DEBUG | INFO | WARN

federation:
  id: "<federationID>"                          # env: MM_FEDERATION_ID

controller:
  endpoint: "<federationID>.mmesh.network:443"  # env: MM_CONTROLLER_ENDPOINT

# basic node configuration
node:
  id: "<nodeID>"                       # env: MM_NODE_ID
  account: "<accountID>"               # env: MM_NODE_ACCOUNT
  tenant: "<tenantID>"                 # env: MM_NODE_TENANT
  network: "<netID>"                   # env: MM_NODE_NETWORK
  subnet: "<subnetID>"                 # env: MM_NODE_SUBNET
  authSecret: "<subnet_auth_secret>"   # env: MM_NODE_AUTHSECRET
  authKey: "<subnet_auth_key>"         # env: MM_NODE_AUTHKEY

# mmesh agent configuration
agent:
  # iface specifies the network interface that mmesh-node will use:
  # Defaults:
  #  - 'mmesh0' (Linux)
  #  - 'utun2'  (Darwin)
  #  - 'mmesh'  (Windows)
  iface: "<mmesh_network_interface>"   # env: MM_AGENT_IFACE

  # port specifies the port number that will be used for network transport
  # this port will be used both for UDP (for QUIC transport) and
  # for TCP (for TCP transport)
  # Default: 57775
  port: 57775                          # env: MM_AGENT_PORT

  # priority specifies this node precedence in potential scenarios
  # of high-availability where more than one node could have the same IP address
  priority: 2                          # env: MM_AGENT_PRIORITY

  # relay specifies whether this node can relay or not traffic for
  # other nodes in the same subnet
  relay: false       # true | false    # env: MM_AGENT_RELAY

  # externalIPv4 is optional, but it's used when the node needs to be reachable
  # as a relay for other nodes in the same subnet
  # externalIPv4: <1.2.3.4>            # env: MM_AGENT_EXTERNALIPV4

  dns:
    # port for the internal DNS service running on the node for DNS discovery
    # Default: 53535
    port: 53535                        # env: MM_AGENT_DNS_PORT

  kubernetes:
    controller:
      # enable or disable the kubernetes gateway features on this node
      # The kubernetes gateway is useful in nodes running on kubernetes clusters
      # to route traffic to ClusterIP services running in the cluster
      enabled: false                   # env: MM_AGENT_KUBERNETES_CONTROLLER_ENABLED

  networking:
      # Disable or not the networking features in this node
      # Useful if only want automation, monitoring or remote management
      # functionalities, but don't need the mmesh network layer
      # Default: false
    disabled: false                    # env: MM_AGENT_NETWORKING_DISABLED

  # Remote management features and permissions
  management:
    # See: https://docs.mmesh.io/platform/networking/nodes/
    auth:
      psk: "<your_auth_preshared_key>"            # env: MM_AGENT_MANAGEMENT_AUTH_PSK
      securityToken: "<your_auth_security_token>" # env: MM_AGENT_MANAGEMENT_AUTH_SECURITYTOKEN
    disableExec: false                 # env: MM_MANAGEMENT_DISABLEEXEC
    disableTransfer: false             # env: MM_MANAGEMENT_DISABLETRANSFER
    disablePortForwarding: false       # env: MM_MANAGEMENT_DISABLEPORTFORWARDING

# network endpoint configuration
endpoint:
  # dnsName specifies the name this node will use to register itself on the
  # internal DNS discovery system.
  # It will be resolved as '<node_name>.mmesh.local' by the mmesh DNS
  dnsName: "<node_name>"             # env: MM_ENDPOINT_DNSNAME

  # ipv4 specifies the IPv4 belonging to the subnet's range you want to be
  # assigned to this node.
  # If the IP is not available (used by other node) an error will be reported
  # during the node initialization.
  # In general, it's recommended to let the subnet IPAM system automatically
  # manage and assign the IPs by configuring this setting as 'auto'.
  # Once an IP has been assigned to a node, it will be reserved for that
  # node until the node is deleted (the IP will be then released by the IPAM system)
  # Default: 'auto'
  ipv4: "auto"      # requested ipv4  # env: MM_ENDPOINT_IPV4

# IP routes redistribution (optional)
routes:
  # Optional array to specify external CIDRs to be routed via this node.
  # It allows to redistribute external prefixes on the mmesh routing system
  export:
    # Examples:
    # - 1.2.3.4/32
    # - 192.168.20.0/24
    # - fd88:d33:f321:1::1/128
    # - fd88:d33:f321:43ba::/64

  # Optional array to specify valid external routes to be injected in this node
  # as static routes
  import:
    # Examples:
    # - any
    # - 192.168.10.128/25
    # - fd88:d33:f321:2::1/128

# Maintenance configuration
maintenance:
  # The mmesh-node binary can be automatically updated when a new version
  # if found in the official repository.
  # autoUpdate allows to disable this featured
  autoUpdate: true                   # env: MM_MAINTENANCE_AUTOUPDATE

  # You can configure the time for auto-updates.
  # default schedule: 00:00 (at midnight)
  schedule:
    hour: 1                          # env: MM_MAINTENANCE_SCHEDULE_HOUR
    minute: 30                       # env: MM_MAINTENANCE_SCHEDULE_MINUTE
```
