---
title: "[Topology] Subnets Administration"
description: "A mmesh subnet is a logical component of mmesh that groups nodes. You can manage the subnets using mmeshctl or the mmesh webUI."
tags:
  - admin
  - networking
  - topology
  - routing
  - security
---

# Subnets

A mmesh `subnet` is a logical component of mmesh that groups `nodes`.

> See [Topology](/docs/platform/networking/topology/#subnet) section to find more information on mmesh subnets.

## Attributes

The following table includes the attributes that define a mmesh `subnet`:

| Name             | Type      | Default | Editable<sup>*</sup> | Description |
| :--------------- | :-------: | :-----: | :------------------: | :---------- |
| `subnetCIDR`    | `string`  |         | no  | /24 IPv4 prefix within the parent network range|
| `subnetID`       | `string`  | `subnet-nnn` | no  | subnet identifier derived from `subnetCIDR` (could also appear as `vrfID`) |
| `description`    | `string`  |         | yes | short descriptive text |
| `subnet_secret` | `string` | | yes | subnet authorization secret |
| `default_security_policy` | `enum` | | yes | default security policy: `ACCEPT` \| `DROP` |

<table-note>
The parameter can be modified once the entity is created.
</table-note>

## Operations

You can manage your subnets using `mmeshctl` or the mmesh webUI.

### WebUI: Subnets

1. In the navigation menu on the left, click `Topology` to browse your tenants.
2. Select a tenant to browse its networks.
3. Select a network to browse its subnets.

### CLI: Subnets

#### List Subnets

List all the subnets within a parent network.

```shell
mmeshctl subnet list
```

#### Create Subnet

Create a new subnet within a parent network.

```shell
mmeshctl subnet create
```

#### Show Subnet

Show all the details of a subnet.

```shell
mmeshctl subnet show
```

#### Update Subnet

Update a subnet.

The following parameters are *editable*:

- `description`
- `subnet_secret`
- `default_security_policy`

```shell
mmeshctl subnet update
```

#### Delete Subnet

Delete a subnet with all its configuration and child entities (nodes).

```shell
mmeshctl subnet delete
```

***

#### Delete IPAM entry

Remove (release) a leased IP from the subnet IP Address Management (IPAM) system database.

```shell
mmeshctl subnet delete-ipam-entry
```

***

#### Show Subnet Routes

Show subnet routing table.

```shell
mmeshctl routes
```

***

#### Set Default Security Policy

Set subnet default security policy.

```shell
mmeshctl policy set-default
```

#### Show Security Policy

Show subnet security policy.

```shell
mmeshctl policy show
```

#### Set Security Policy Rule

Set subnet security policy rule.

```shell
mmeshctl policy set-rule
```

#### Delete Security Policy Rule

Delete subnet security policy rule.

```shell
mmeshctl policy unset-rule
```

#### Delete Security Policy

Delete subnet security policy (all rules).

```shell
mmeshctl policy delete
```

#### Import Security Policy

Import subnet security policy from YAML file.

```shell
mmeshctl policy import -f <yamlFile>
```

#### Export Security Policy

Export subnet security policy in YAML format.

```shell
mmeshctl policy export
```
