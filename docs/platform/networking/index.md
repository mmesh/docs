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

mmesh acts as a compatibility layer on top of your cloud and traditional environments, allowing you to create a seamless [virtual topology](topology.md) where you can define your [security policies](network-security.md#security-policies) and access controls ([RBAC](authorization.md)) to operate and [automate](automation.md) your [nodes](nodes.md) in a simpler and unified way.

### [Topology](topology.md)

Learn how to build your mmesh [topology](topology.md).

### [Nodes](nodes.md)

A `node` is any system connected to your mmesh topology.

Find more information and learn how to manage them in the [Nodes](nodes.md) section.

## Network Security

One of the main goals of mmesh is to help you enhance your infrastructure security in hybrid cloud environments. Easily, without requiring complex tools often difficult to configure, or expensive deployments of legacy equipment.

### [Security Policies](network-security.md#security-policies)

[Security policies](network-security.md#security-policies) act as distributed firewalls and protect the [nodes](nodes.md) connected to mmesh.

### [End-to-End Encryption](network-security.md#end-to-end-encryption)

mmesh automatically enforces [end-to-end encryption](network-security.md#end-to-end-encryption) on all network traffic and user interactions. No configuration required.

## Service Discovery

mmesh implements a [service discovery](service-discovery.md) system where every node connected to mmesh is published on an internal DNS subsystem with the `.mmesh.local` suffix.

You can easily integrate the `.mmesh.local` domain into your DNS infrastructure by configuring the `mmesh.local` domain as a _forward_ zone.

See [DNS Integration](service-discovery.md#dns-integration) for more details.
