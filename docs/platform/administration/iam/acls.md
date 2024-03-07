---
title: "ACLs"
description: "An ACL is defined as the set of nodes that a user will have access to. The administrator can manage the ACLs using mmeshctl or the mmesh webUI."
tags:
  - admin
  - users
  - rbac
  - security
---

# ACLs Administration

An `ACL` controls access to your nodes.

An ACL is defined as the set of nodes that a user will have access to.

The IAM subsystem of mmesh allows the management of the ACLs.

> See [Identity and Access Management](authorization.md#access-control-lists-acls) section to find more information about the mmesh authorization subsystem.

## Attributes

The following table includes the attributes that define a mmesh `ACL`:

| Name     | Type     | Default | Editable<sup>*</sup> | Description |
| :------- | :------: | :-----: | :------------------: | :---------- |
| `acl-id` | `string` |         | no  | ACL identifier |
| `nodes`  | `array`  |         | yes | list of node identifiers |

<table-note>
The parameter can be modified once the entity is created.
</table-note>

## Operations

You can manage the account ACLs using `mmeshctl` or the mmesh webUI.

### WebUI: IAM | ACLs

1. In the navigation menu on the left, click `Account` to expand the menu item, then click `IAM`.

### CLI: IAM | ACLs

#### List ACLs

List all the account ACLs.

```shell
mmeshctl iam acl list
```

#### Create ACL

Create a new ACL.

```shell
mmeshctl iam acl set
```

#### Show ACL

Show all the details of an ACL.

```shell
mmeshctl iam acl show
```

#### Update ACL

Update an ACL.

The following parameters are *editable*:

- `nodes`

```shell
mmeshctl iam acl set
```

#### Delete ACL

Delete an ACL.

```shell
mmeshctl iam acl delete
```
