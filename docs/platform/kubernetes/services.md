---
title: "Kubernetes Services Integration"
description: "Learn how to connect your Kubernetes Services to your mmesh virtual private topology without adding a single line of code or configuration."
---

# Kubernetes Services

## Kubernetes Services Forwarding

A mmesh node with the feature `Kubernetes Gateway` enabled, if running on a Kubernetes Cluster, can expose ClusterIP Services as its own endpoints in the mmesh subnet.

This allows ClusterIP Services to have their own IPv4, IPv6 and DNS name within a mmesh subnet and be published in the mmesh internal DNS.

This method only supports one-way communication from the mmesh subnet to the Kubernetes ClusterIP Services. That means pods under those ClusterIP Services can't initiate connections to other nodes in your mmesh.

Conceptually this method is very similar to how a Kubernetes Ingress works.

Although one of the main differences is the mmesh gateway node will forward automatically any TCP or UDP port the ClusterIP Service is exposing.

The process creates, if not exists, a Kubernetes StatefulSet in your Cluster with a mmesh node connected to the mmesh subnet of your choice and the `Kubernetes Gateway` feature enabled. The mmesh node will then expose on the subnet the ClusterIP Services you select. No configuration is required in your applications.

## Administration

You can connect your Kubernetes Services to your mmesh in seconds with `mmeshctl`.

Browse the [Kubernetes Administration](/docs/platform/administration/kubernetes/) section
to learn how to manage your Kubernetes Services.
