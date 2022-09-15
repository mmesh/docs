---
title: "[Topology] Networks Administration"
description: "A mmesh network is a logical component of mmesh that groups subnets. You can manage the networks using mmeshctl or the mmesh webUI."
---

# Networks

A mmesh `network` is a logical component of mmesh that groups `subnets`.

> See [Topology](/docs/platform/networking/topology/#network) section to find more information on mmesh networks.

## Attributes

The following table includes the attributes that define a mmesh `network`:

| Name             | Type      | Default | Editable<sup>*</sup> | Description |
| :--------------- | :-------: | :-----: | :------------------: | :---------- |
| `netID`          | `string`  |         | no  | network identifier |
| `networkCIDR`    | `string`  |         | no  | /16 IPv4 prefix |
| `description`    | `string`  |         | yes | short descriptive text |
| `routed_subnets` | `boolean` | `false` | yes | enable subnets visibility within the network |

<table-note>
The parameter can be modified once the entity is created.
</table-note>

## Operations

You can manage your networks using `mmeshctl` or the mmesh webUI.

### WebUI: Networks

1. In the navigation menu on the left, click `Topology` to browse your tenants.
2. Select a tenant to browse its networks.

### CLI: Networks

#### List Networks

List all the networks within a parent parent.

```shell
mmeshctl network list
```

#### Create Network

Create a new network within a parent tenant.

```shell
mmeshctl network create
```

#### Show Network

Show all the details of a network.

```shell
mmeshctl network show
```

#### Update Network

Update a network.

The following parameters are *editable*:

- `description`
- `routed_subnets`

```shell
mmeshctl network update
```

#### Delete Network

Delete a network with all its configuration and child entities (subnets, nodes).

```shell
mmeshctl network delete
```
