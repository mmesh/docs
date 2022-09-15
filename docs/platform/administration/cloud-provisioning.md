---
title: "Cloud Provisioning Administration"
description: "Learn how to take advantage of the extended features that mmesh supports via integrations with some popular cloud providers."
tags:
  - admin
  - cloud providers
---

# Cloud Provisioning

>You can add your existing cloud infrastructure to your mmesh no matter where it is deployed.
>
>Every cloud provider in the world is supported and you **don't need any specific integration** for that.
>
> See [Add Nodes](/docs/platform/administration/nodes/) to learn how to add your existing cloud infrastructure to mmesh.

In this section you will learn how to take advantage of some extended features that mmesh supports via integrations with some popular cloud providers, currently:

- [Google Cloud](/docs/platform/cloud-provisioning/google-cloud/)
- [Digital Ocean](/docs/platform/cloud-provisioning/digital-ocean/)
- [Scaleway Cloud](/docs/platform/cloud-provisioning/scaleway/)

To enable the extended features described below, you will need to configure the [integration](/docs/platform/administration/account/#cloud) with at least one of those cloud providers.

> See [Cloud Provisioning](/docs/platform/cloud-provisioning/overview/) to learn more about those integrations and features.

## Operations

If you've already configured your mmesh account with at least one cloud provider integration, you can use the mmesh webUI or the mmesh CLI for cloud provisioning.

> If you prefer to add your cloud nodes without configuring any specific cloud provider integration, or you aim to add your existing, already provisioned, cloud infrastructure, please see the section [Add Nodes](/docs/platform/administration/nodes/).

### WebUI: Cloud Provisioning

1. In the navigation menu on the left, click `Cloud` to browse the **cloud instances provisioned from mmesh**.

### CLI: Cloud Provisioning

#### List Cloud Instances

List all your cloud VM instances.

```shell
mmeshctl cloud instance list
```

#### Add Cloud Instance

Add a cloud VM instance to your mmesh.

```shell
mmeshctl cloud instance add
```

#### Show Cloud Instance

Show all the details of a cloud VM instance.

```shell
mmeshctl cloud instance show
```

#### Delete Cloud Instance

Destroy and remove a cloud VM instance from your mmesh.

```shell
mmeshctl cloud instance delete
```

#### Power-Cycle Cloud Instance

Power-cycle a cloud VM instance.

```shell
mmeshctl cloud instance power-cycle
```

#### Power-On Cloud Instance

Power-on a cloud VM instance.

```shell
mmeshctl cloud instance power-on
```

#### Power-Off Cloud Instance

Power off a cloud VM instance.

```shell
mmeshctl cloud instance power-off
```

#### Reboot Cloud Instance

Reboot a cloud VM instance.

```shell
mmeshctl cloud instance reboot
```

#### Shutdown Cloud Instance

Shut down a cloud VM instance.

```shell
mmeshctl cloud instance shutdown
```

***

#### List Cloud Apps

List all your cloud apps.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app list
```

#### Add Cloud App

Add a cloud app to your mmesh.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app add
```

#### Show Cloud App

Show all the details of a cloud app.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app show
```

#### Delete Cloud App

Destroy and remove a cloud app from your mmesh.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app delete
```

#### Power-Cycle Cloud App

Power-cycle a cloud app.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app power-cycle
```

#### Power-On Cloud App

Power-on a cloud app.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app power-on
```

#### Power-Off Cloud App

Power off a cloud app.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app power-off
```

#### Reboot Cloud App

Reboot a cloud app.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app reboot
```

#### Shutdown Cloud App

Shut down a cloud app.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud app shutdown
```

***

#### List Cloud Kubernetes Clusters

List your Kubernetes clusters.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes list
```

#### Create Cloud Kubernetes Cluster

Create and add a Kubernetes cluster to your mmesh.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes create
```

#### Show Cloud Kubernetes Cluster

Show all the details of a cloud Kubernetes cluster.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes show
```

#### Delete Cloud Kubernetes Cluster

Destroy and remove a Kubernetes cluster from your mmesh.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes delete
```

#### Get Kubeconfig

Get kubeconfig file in YAML format from cloud Kubernetes cluster.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes kubeconfig
```

#### Add NodePool to Cluster

Add a new node pool to an existing cloud Kubernetes cluster.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes add-nodepool
```

#### Delete NodePool from Cluster

Delete new node pool from cloud Kubernetes cluster.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes delete-nodepool
```

#### Add Node to Cluster

Add a new node to an existing cloud Kubernetes cluster.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes add-node
```

#### Delete Node from Cluster

Delete node from existing cloud Kubernetes cluster.

<note>
Currently, this feature is only supported by the Digital Ocean integration.
</note>

```shell
mmeshctl cloud kubernetes delete-node
```
