---
title: [IAM] Users Administration
description: mmesh has two types of users, the account administrator and the normal users. The administrator can manage the users using mmeshctl or the mmesh webUI.
---

# IAM: Users

mmesh has two types of users:

- The account administrator, which is considered the account owner.
- Normal users.

The IAM subsystem of mmesh allows the account administrator to manage the normal users.

> See [Identity and Access Management](/docs/platform/iam/overview/) section to find more information about users management.

## Attributes

The following table includes the attributes that define a mmesh `user`:

| Name          | Type      | Default | Editable<sup>*</sup> | Description |
| :------------ | :-------: | :-----: | :------------------: | :---------- |
| `email`       | `string`  |         | no  | user email |
| `username`    | `string`  |         | no  | user identifier |
| `password`    | `string`  |         | yes | user password |
| `security_groups` | `array` |       | yes | list of security groups |
| `acls`        | `array`  |          | yes | list of ACLs  |
| `roles`       | `array`  |          | yes | list of roles |

<table-note>
The parameter can be modified once the entity is created.
</table-note>

## Operations

You can manage the account users using `mmeshctl` or the mmesh webUI.

### WebUI: IAM | Users

1. In the navigation menu on the left, click `Account` to expand the menu item, then click `IAM`.

### CLI: IAM | Users

#### List Users

List all your users.

```shell
mmeshctl iam user list
```

#### Create User

Create a new user.

```shell
mmeshctl iam user create
```

#### Show User

Show all the details of a user.

```shell
mmeshctl iam user show
```

#### Delete User

Delete a user.

```shell
mmeshctl iam user delete
```

#### Enable User

Enable a previously disabled user.

*Disabled* users are inactive and can't login.

```shell
mmeshctl iam user enable
```

#### Disable User

Disable a previously enabled user.

```shell
mmeshctl iam user disable
```

#### Set User Permissions

Update user permissions.

The following parameters are *editable*:

- `security_groups`
- `acls`
- `roles`

```shell
mmeshctl iam user set-perms
```
