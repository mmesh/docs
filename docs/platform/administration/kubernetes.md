---
title: "Kubernetes Integration Administration"
description: "Connect your Kubernetes Services and Pods to your mmesh in seconds with mmeshctl without adding a single line of code or configuration."
tags:
  - admin
  - kubernetes
---

# Kubernetes Integration Administration

You can connect your Kubernetes Services and Pods to your mmesh in seconds with `mmeshctl` without adding a single line of code or configuration.

> See [Kubernetes](/docs/platform/kubernetes/overview/) section to find more information on how it works the Kubernetes integration in mmesh.

## Operations

### CLI: Kubernetes

`mmeshctl` will look for the `KUBECONFIG` env to be able to connect to your Kubernetes Cluster. No other configuration is required.

#### List Kubernetes Services

List services on your Kubernetes cluster.

You will see the mmesh connection status of all the services on your cluster.

```shell
mmeshctl k8s svc list
```

#### Connect Kubernetes Service

Connect a Kubernetes Service to your mmesh.

```shell
mmeshctl k8s svc connect
```

#### Disconnect Kubernetes Service

Disconnect a Kubernetes Service from your mmesh.

```shell
mmeshctl k8s svc disconnect
```

***

#### List Kubernetes Pods

List pods on your Kubernetes cluster.

You will see the mmesh connection status of all the pods on your cluster.

```shell
mmeshctl k8s pod list
```

#### Connect Kubernetes Pod

Connect a Kubernetes Pod to your mmesh.

```shell
mmeshctl k8s pod connect
```

#### Disconnect Kubernetes Pod

Disconnect a Kubernetes Pod from your mmesh.

```shell
mmeshctl k8s pod disconnect
```
