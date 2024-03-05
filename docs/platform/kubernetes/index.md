---
title: "Kubernetes Integration Overview"
description: "Learn how to connect your Kubernetes Services and Pods to your mmesh virtual private topology without adding a single line of code or configuration."
tags:
  - networking
  - topology
  - routing
  - kubernetes
---

# Kubernetes Integration

You can integrate your Kubernetes Services and Pods in your mmesh topology without adding a single line of code or configuration.

Since mmesh works directly with your Pods and ClusterIP Services, you can enhance your network's security and save hundreds of dollars in cloud load-balancers and public IPs by connecting them internally to your mmesh topology with your own private IP addressing, instead of exposing them to the internet.

All Kubernetes implementations and derivatives in on-prem or public cloud are supported.

There are two ways of connecting the applications you have running on Kubernetes to your mmesh topology. You can connect them at Service-level or at Pod-level.

### [Kubernetes Services Forwarding](/docs/platform/kubernetes/services/)

A mmesh node with the feature `Kubernetes Gateway` enabled, if running on a Kubernetes Cluster, can expose ClusterIP Services as its own endpoints in the mmesh subnet.

### [Kubernetes Pods Routing](/docs/platform/kubernetes/pods/)

This method connects your Kubernetes Pods as full-featured mmesh nodes to a mmesh subnet.
