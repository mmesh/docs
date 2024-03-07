---
title: "Architecture"
description: "Aimed to reduce complexity and costs, the mmesh platform is a hybrid cloud integration platform designed to be simple, scalable, secure and easy-to-use."
tags:
  - concepts
---

# Architecture

## Design Principles

mmesh is an all-in-one, hybrid cloud integration platform designed to be **simple**, **scalable**, **secure** and **easy-to-use**.

You won't need to be an expert network or systems engineer to take full advantage of mmesh.

mmesh can be an excellent choice for everyone who is moving to the cloud and looks for an easy-to-use but feature-rich, multi-cloud integration platform to reduce complexity and costs.

mmesh allows you to simplify your infrastructure deployments and get rid of complex network integrations.

## Abstraction Model

The mmesh architecture is based on a hierarchical model composed by four types of logical entities: `tenants`, `networks`, `subnets` and `nodes`.

With these components you design your own [mmesh topology](topology.md): an unified abstraction overlay built on top of your cloud and traditional environments.

### [Tenant](topology.md#tenant)

A [tenant](topology.md#tenant) is a logical component of mmesh that groups networks.

### [Network](topology.md#network)

A [network](topology.md#network) is a logical component of mmesh that groups subnets.

### [Subnet](topology.md#subnet)

A [subnet](topology.md#subnet) is a logical component of mmesh that groups nodes.

### [Node](nodes.md)

A [node](nodes.md) is any system connected to a mmesh subnet.
