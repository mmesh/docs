---
title: "Security Groups"
description: "A security group controls access to the account's tenants. The administrator can manage the security groups using mmeshctl or the mmesh webUI."
tags:
  - admin
  - users
  - rbac
  - security
---

# Security Groups Administration

A `security group` controls access to the account's tenants.

A security group is defined as the list of tenants that the user will have access to.

The IAM subsystem of mmesh allows the management of the security groups.

> See [Identity and Access Management](authorization.md#security-groups) section to find more information about the mmesh authorization subsystem.

## Attributes

The following table includes the attributes that define a mmesh `security group`:

| Name          | Type      | Default | Editable<sup>*</sup> | Description |
| :------------ | :-------: | :-----: | :------------------: | :---------- |
| `security-group-id` | `string` |         | no  | security group identifier |
| `tenants`           | `array`  |         | yes | list of tenants |

<table-note>
The parameter can be modified once the entity is created.
</table-note>

## Operations

You can manage the account security groups using `mmeshctl` or the mmesh webUI.

### WebUI: IAM | Security Groups

1. In the navigation menu on the left, click `Account` to expand the menu item, then click `IAM`.

### CLI: IAM | Security Groups

#### List Security Groups

List all the account security groups.

```shell
mmeshctl iam security-group list
```

#### Create Security Group

Create a new security group.

```shell
mmeshctl iam security-group set
```

#### Show Security Group

Show all the details of a security group.

```shell
mmeshctl iam security-group show
```

#### Update Security Group

Update a security group.

The following parameters are *editable*:

- `tenants`

```shell
mmeshctl iam security-group set
```

#### Delete Security Group

Delete a security group.

```shell
mmeshctl iam security-group delete
```
