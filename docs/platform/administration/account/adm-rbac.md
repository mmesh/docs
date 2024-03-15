---
title: "RBAC"
description: "An ACL is defined as the set of nodes that a user will have access to. The administrator can manage the ACLs using mmeshctl or the mmesh webUI."
tags:
  - admin
  - users
  - rbac
  - security
---

# Access Management Administration

## ACLs Administration

An `ACL` controls access to your nodes.

An ACL is defined as the set of nodes that a user will have access to.

The IAM subsystem of mmesh allows the management of the ACLs.

!!! Note

    See [Identity and Access Management](authorization.md#access-control-lists-acls) section to find more information about the mmesh authorization subsystem.

### Operations

You can manage the account ACLs using `mmeshctl` or the mmesh webUI.

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

##  Security Groups Administration

A `security group` controls access to the account's tenants.

A security group is defined as the list of tenants that the user will have access to.

The IAM subsystem of mmesh allows the management of the security groups.

!!! Note

    See [Identity and Access Management](authorization.md#security-groups) section to find more information about the mmesh authorization subsystem.

### Operations

You can manage the account security groups using `mmeshctl` or the mmesh webUI.

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

