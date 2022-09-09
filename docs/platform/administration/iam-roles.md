# IAM: Roles

A `role` controls the user access to the different mmesh subsystems, resources and commands.

A role is defined with a set of permissions. These permissions regulate what the user can do or not within your mmesh account.

The IAM subsystem of mmesh allows to manage the roles.

> See [Identity and Access Management](/docs/platform/iam/authorization#user-roles) section to find more information about the mmesh authorization subsystem.

## Attributes

The following table includes the attributes that define a mmesh `role`:

| Name     | Type     | Default | Editable<sup>*</sup> | Description |
| :------- | :------: | :-----: | :------------------: | :---------- |
| `role-id` | `string` |         | no  | role identifier |
| `permissions`  | `array`  |         | yes | list of mmesh permissions |

<table-note>
The parameter can be modified once the entity is created.
</table-note>

## Operations

You can manage the account roles using the mmesh webUI or the mmesh CLI.

### WebUI: IAM | Roles

1. In the navigation menu on the left, click `Account` to expand the menu item, then click `IAM`.

### CLI: IAM | Roles

#### List Roles

List all the account roles.

```shell
mmeshctl iam role list
```

#### Create Role

Create a new role.

```shell
mmeshctl iam role set
```

#### Show Role

Show all the details of a role.

```shell
mmeshctl iam role show
```

#### Update Role

Update a role.

The following parameters are *editable*:

- `permissions`

```shell
mmeshctl iam role set
```

#### Delete Role

Delete a role.

```shell
mmeshctl iam role delete
```
