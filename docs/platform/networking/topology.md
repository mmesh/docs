---
title: "Virtual Topology"
description: "Learn how to design your own virtual private topology and segment your multi-cloud infrastructure environments to meet your security requirements."
tags:
  - concepts
  - networking
  - topology
---

# Virtual Topology

mmesh allow you to design your own virtual private topology and segment your infrastructure environments to meet your security requirements according to your operational or compliance needs.

## Network Abstraction Model

You have three logical, hierarchical components (`tenants`, `networks` and `subnets`) to build your topology without dependencies on underlying infrastructure or different technologies you might find in multi-cloud and on-premise environments.

Since those logical components are basically architectural abstractions, you don't have any physical constraint or boundary to design your topology according to your own criteria, no matter where your infrastructure is really deployed.

### Tenant

A `tenant` is a logical component of mmesh that groups `networks`.

You can create unlimited tenants in your mmesh topology.

Tenants are also relevant for your mmesh authorization policy since they are usually associated to [security groups](authorization.md#security-groups).

As example, if you were a service provider with multiple customers, you could design your mmesh by creating a tenant per customer. Then you could associate each tenant to a security-group that you then assign to the team members who need to have access to that customer.

#### Tenants Administration

Browse the [Tenants Administration](tenants.md) section to learn how to manage your tenants.

### Network

A `network` is a logical component of mmesh that groups `subnets`.

You can create unlimited networks per tenant. A network can have 255 subnets.

A network needs to be configured with a **/16** IPv4 prefix. You will configure this prefix according to your own preferences, so it will usually be an RFC1918 private range of your choice.

From routing point of view, **networks are totally isolated from each other**.

As an example, you can create separate networks for development and production environments while keeping them totally isolated.

#### Routed Subnets

Regarding network's subnets, you have the option to enable or disable routing isolation at subnet level by configuring the _`Routed Subnets`_ flag in the network configuration.

With this option enabled, a node connected to a subnet under this network will be able to reach other nodes in different subnets on the same network.

With this option disabled, a node connected to a subnet under this network will only be able to reach other nodes connected to the same subnet, since all network's subnets become isolated from routing point of view.

In other words, every subnet within a network with this option disabled becomes an isolated virtual router (also known as VRF in IP routing terminology).

#### Networks Administration

Browse the [Networks Administration](adm-networks.md) section to learn how to manage your networks.

### Subnet

A `subnet` is a logical component of mmesh that groups `nodes`.

A network can have 255 subnets.

At maximum, a subnet can have 255 nodes.

A subnet is configured with a **/24** IPv4 prefix belonging to the network IP range.

For simplicity, the subnets only support /24 prefixes.

As previously stated, a node connected to a subnet usually will be able to reach only other nodes connected to the same subnet, unless you explicitly enable the option _`Route Subnets`_ in the parent network.

With this option enabled, a node connected to a subnet under this network will be able to reach other nodes in different subnets under the same network.

#### IP Address Management

Every subnet has an internal IP Address Management System (IPAM) service responsible for automatically assigning and releasing IP addresses to the nodes connected.

When you configure a node to be connected to a specific subnet, you have the option to manually specify an IPv4 belonging to the subnet's range or let the subnet's IPAM assign one automatically to the node. For simplicity, the _`auto`_ mode is the default and the recommended one for the nodes.

When an IPv4 has been assigned, the IPAM also automatically assigns an IPv6 derived from the IPv4 to the node.

#### Admission Control

When you create a subnet you will be asked to configure the subnet's `authorization secret`.

This `authorization secret`, along with an automatically generated `authorization key` will be the credentials you will need to configure in the nodes you want to be connected to the subnet.

The `authorization secret` won't be never displayed once configured, but can be reconfigured at any time.

#### Security Policies

Every subnet has a [security policy](network-security.md#security-policies) attached.

This **security policy acts as a distributed firewall** protecting every node connected to the subnet.

You can browse the [network security](network-security.md) section to learn about security policies and how to increase the protection of your nodes.

## Examples

If you are a service provider, you might need different tenants for your different customers.

Or you might want a dedicated subnet to put all your remote workers' laptops.

In a hybrid cloud scenario, for your development environment, you could have a mmesh subnet with VMs in different cloud providers, bare-metal servers in traditional data centers and some macOS laptops from your remote developers.

You will probably want to isolate production from development environments, internet-exposed services from internal ones, and so on.
