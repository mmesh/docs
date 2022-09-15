---
title: "[Topology] Tenants Administration"
description: "A mmesh tenant is a logical component of mmesh that groups networks. You can manage the tenants using mmeshctl or the mmesh webUI."
tags:
  - admin
  - networking
  - topology
  - security
---

# Tenants

A mmesh `tenant` is a logical component of mmesh that groups `networks`.

> See [Topology](/docs/platform/networking/topology/#tenant) section to find more information on mmesh tenants.

## Attributes

The following table includes the attributes that define a mmesh `tenant`:

| Name             | Type      | Default | Editable<sup>*</sup> | Description |
| :--------------- | :-------: | :-----: | :------------------: | :---------- |
| `tenantID`       | `string`  |         | no  | tenant identifier |
| `description`    | `string`  |         | yes | short descriptive text |

<table-note>
The parameter can be modified once the entity is created.
</table-note>

## Operations

You can manage your tenants using `mmeshctl` or the mmesh webUI.

### WebUI: Tenants

1. In the navigation menu on the left, click `Topology` to browse your tenants.

### CLI: Tenants

#### List Tenants

List all your tenants.

```shell
mmeshctl tenant list
```

#### Create Tenant

Create a new tenant.

```shell
mmeshctl tenant set
```

#### Show Tenant

Show all the details of a tenant.

```shell
mmeshctl tenant show
```

#### Update Tenant

Update a tenant.

The following parameters are *editable*:

- `description`

```shell
mmeshctl tenant set
```

#### Delete Tenant

Delete a tenant with all its configuration and child entities (networks, subnets, nodes).

```shell
mmeshctl tenant delete
```
