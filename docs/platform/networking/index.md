---
title: "Networking"
description: "You don't need to be a network expert to take full advantage of mmesh. This section will help you learn about the platform networking concepts and features."
tags:
  - networking
  - topology
  - security
---

# Networking

This documentation section helps you learn about the networking concepts and features of mmesh.

You don't need to be an network expert to take full advantage of mmesh, although the platform also supports some advanced features designed to meet service provider requirements in scenarios with complex network environments.

Browse the topics below to learn more.

## Network Abstraction

mmesh acts as a compatibility layer on top of your cloud and traditional environments, allowing you to create a seamless [virtual topology](/docs/platform/networking/topology/) where you can define your [security policies](/docs/platform/networking/network-security/#security-policies) and access controls ([RBAC](/docs/platform/iam/authorization/)) to operate and [automate](/docs/platform/automation/overview/) your [nodes](/docs/platform/networking/nodes/) in a simpler and unified way.

### [Topology](/docs/platform/networking/topology/)

Learn how to build your mmesh [topology](/docs/platform/networking/topology/).

### [Nodes](/docs/platform/networking/nodes/)

A `node` is any system connected to your mmesh topology.

Find more information and learn how to manage them in the [Nodes](/docs/platform/networking/nodes/) section.

## Network Security

One of the main goals of mmesh is to help you enhance your infrastructure security in hybrid cloud environments. Easily, without requiring complex tools often difficult to configure, or expensive deployments of legacy equipment.

### [Security Policies](/docs/platform/networking/network-security/#security-policies)

[Security policies](/docs/platform/networking/network-security/#security-policies) act as distributed firewalls and protect the [nodes](/docs/platform/networking/nodes/) connected to mmesh.

### [End-to-End Encryption](/docs/platform/networking/network-security/#end-to-end-encryption)

mmesh automatically enforces [end-to-end encryption](/docs/platform/networking/network-security/#end-to-end-encryption) on all network traffic and user interactions. No configuration required.

## Service Discovery

mmesh implements a [service discovery](/docs/platform/networking/service-discovery/) system where every node connected to mmesh is published on an internal DNS subsystem with the `.mmesh.local` suffix.

You can easily integrate the `.mmesh.local` domain into your DNS infrastructure by configuring the `mmesh.local` domain as a _forward_ zone.

See [DNS Integration](/docs/platform/networking/service-discovery/#dns-integration) for more details.

## Best Practices

Learn some tricks and recommended configurations [here](/docs/platform/networking/best-practices/).
