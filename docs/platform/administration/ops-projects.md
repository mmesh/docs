# Ops: Projects

An mmesh `project` is a logical component of mmesh that groups automation `workflows`.

> See [Automation](/platform/automation/projects) section to find more information on mmesh projects.

## Attributes

The following table includes the attributes that define a mmesh `project`:

| Name             | Type      | Default | Editable<sup>*</sup> | Description |
| :--------------- | :-------: | :-----: | :------------------: | :---------- |
| `projectID`      | `string`  |         | no  | project identifier |
| `description`    | `string`  |         | yes | short descriptive text |
| `review_required` | `boolean` | `false` | yes | require peer-reviews for the workflows before they can run on the target nodes |
| `approval_required` | `boolean` | `false` | yes | require approvals for the workflows before they can run on the target nodes |

<table-note>
The parameter can be modified once the entity is created.
</table-note>

## Operations

You can manage your projects using the mmesh webUI or the mmesh CLI.

### WebUI: Projects

1. In the navigation menu on the left, click `Automation` to browse your projects.

### CLI: Projects

#### List Projects

List all your projects.

```shell
mmeshctl ops project list
```

#### Create Project

Create a new project.

```shell
mmeshctl ops project set
```

#### Show Project

Show all the details of a project.

```shell
mmeshctl project show
```

#### Update Project

Update a project.

The following parameters are *editable*:

- `description`
- `review_required`
- `approval_required`

```shell
mmeshctl project set
```

#### Delete Project

Delete a project with all its configuration and child entities (workflows).

```shell
mmeshctl project delete
```
