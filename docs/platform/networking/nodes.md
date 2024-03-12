---
title: "Nodes"
description: "A node is any system connected to a mmesh subnet. It can be a VM, a Kubernetes Pod, a bare-metal server, a docker container, a laptop, a workstation..."
tags:
  - networking
  - topology
  - routing
  - nodes
  - kubernetes
  - dns
  - security
---

# Nodes

A `node` is any system connected to a mmesh `subnet`.

It can be a VM, a Kubernetes Pod, a bare-metal server, a docker container, a laptop, a workstation...

At maximum, you can have 255 nodes connected to a mmesh subnet.

A node will be assigned at least one IP address from the subnet range where it's connected. This IP can be manually or dynamically assigned.

!!! Note

    See [IP Address Management](topology.md#subnet) section for more information about addressing.

A node will also have a DNS name which can be also manually configured in the `mmesh-node.yml` file. In case it is not specified, the **node ID** will be used.

!!! Note

    See [Node Configuration Reference](mmesh-node.yml.md) section for more information about the `mmesh-node.yml` file.

## Endpoints

In mmesh terminology, the node IP along with the internal DNS name corresponds with a node's `endpoint`.

A node will have at least one endpoint, although in some scenarios, as when the node is configured as a _`Kubernetes Gateway`_, it can have more.

## Kubernetes Gateway

You can configure a node as a _`Kubernetes Gateway`_ by enabling the option in the `mmesh-node.yml` file.

With this option enabled, a node can **forward traffic from the mmesh subnet to _Kubernetes ClusterIP Services_**.

With this configuration each of these ClusterIP Services will become an endpoint with its own IP and internal DNS name.

Learn more about mmesh nodes acting as Kubernetes gateways [here](k8s-services.md).

## Service Discovery

mmesh has a service discovery system that publishes every node endpoint in an internal DNS subsystem which is enabled in every node.

You can query this internal DNS service by default on the port `UDP/5353`.

> See [DNS Integration](service-discovery.md) section for more information on how to integrate the mmesh service discovery system with your DNS infrastructure.


## Administration

### Nodes Management

Browse the [Nodes Administration](adm-nodes.md) section to learn how to manage your nodes.
