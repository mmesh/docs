---
title: Kubernetes Integration Administration
description: You can connect your Kubernetes Services and Pods to your mmesh in seconds with mmeshctl without adding a single line of code or configuration.
---

# Kubernetes

You can connect your Kubernetes Services and Pods to your mmesh in seconds with `mmeshctl` without adding a single line of code or configuration.

> See [Kubernetes](/docs/platform/kubernetes/overview/) section to find more information on how it works the Kubernetes integration in mmesh.

## Operations

### CLI: Kubernetes

`mmeshctl` will look for the `KUBECONFIG` env to be able to connect to your Kubernetes Cluster. No other configuration is required.

#### List Kubernetes Services

List services on your Kubernetes cluster.

You will see the mmesh connection status of all the services on your cluster.

```shell
mmeshctl k8s svcs
```

#### Connect Kubernetes Service

Connect a Kubernetes Service to your mmesh.

```shell
mmeshctl k8s connect-svc
```

#### Disconnect Kubernetes Service

Disconnect a Kubernetes Service from your mmesh.

```shell
mmeshctl k8s disconnect-svc
```

***

#### List Kubernetes Pods

List pods on your Kubernetes cluster.

You will see the mmesh connection status of all the pods on your cluster.

```shell
mmeshctl k8s pods
```

#### Connect Kubernetes Pod

Connect a Kubernetes Pod to your mmesh.

```shell
mmeshctl k8s connect-pod
```

#### Disconnect Kubernetes Pod

Disconnect a Kubernetes Pod from your mmesh.

```shell
mmeshctl k8s disconnect-pod
```
