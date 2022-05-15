---
tags:
  - networking
  - security
---

# Overview

This documentation section helps you learn about the networking concepts and features of mmesh.

You don't need to be an network expert to take full advantage of mmesh, although the platform also supports some advanced features designed to meet service provider requirements in scenarios with complex network environments.

Browse the topics below to learn more.

## Network Abstraction

mmesh acts as a compatibility layer on top of your cloud and traditional environments, allowing you to create a seamless [virtual topology](/platform/networking/topology/) where you can define your [security policies](/platform/networking/network-security/#security-policies) and access controls ([RBAC](/platform/iam/authorization/)) to operate and [automate](/platform/automation/overview/) your [nodes](/platform/networking/nodes/) in a simpler and unified way.

### [Topology](/platform/networking/topology/)

Learn how to build your mmesh [topology](/platform/networking/topology/).

### [Nodes](/platform/networking/nodes/)

A `node` is any system connected to your mmesh topology.

Find more information and learn how to manage them in the [Nodes](/platform/networking/nodes/) section.

## Network Security

One of the main goals of mmesh is to help you enhance your infrastructure security in hybrid cloud environments. Easily, without requiring complex tools often difficult to configure, or expensive deployments of legacy equipment.

### [Security Policies](/platform/networking/network-security/#security-policies)

[Security policies](/platform/networking/network-security/#security-policies) act as distributed firewalls and protect the [nodes](/platform/networking/nodes/) connected to mmesh.

### [End-to-End Encryption](/platform/networking/network-security/#end-to-end-encryption)

mmesh automatically enforces [end-to-end encryption](/platform/networking/network-security/#end-to-end-encryption) on all network traffic and user interactions. No configuration required.

## Service Discovery

mmesh implements a [service discovery](/platform/network/service-discovery/) system where every node connected to mmesh is published on an internal DNS subsystem with the `.mmesh.local` suffix.

You can easily integrate the `.mmesh.local` domain into your DNS infrastructure by configuring the `mmesh.local` domain as a _forward_ zone.

See [DNS Integration](/platform/networking/service-discovery/#dns-integration) for more details.

## Advanced Features

mmesh supports [advanced features](/platform/networking/advanced-features/) designed to meet service provider requirements in scenarios with complex network environments.

- [Dynamic Routing](/platform/networking/advanced-features/#dynamic-routing)
- [Address Overlapping](/platform/networking/advanced-features/#address-overlapping)
- [mmesh64](/platform/networking/advanced-features/#mmesh64)
- [High Availability](/platform/networking/advanced-features/#high-availability)

## Best Practices

Learn some tricks and recommended configurations [here](/platform/networking/best-practices/).
