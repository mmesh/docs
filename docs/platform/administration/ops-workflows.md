# Ops: Workflows

The automation subsystem of mmesh is based on `workflows`.

They are declarative YAML files where you define the processes you want to automate, the triggers and schedule configuration to launch them, the target nodes and other parameters like notification recipients and reviewers / approvers.

You can easily manage your mmesh workflows via GitOps by enabling the [GitHub integration](/docs/platform/administration/account#gitops).

> See [Automation](/docs/platform/automation/workflows) section to find more information on mmesh workflows.

## Attributes

In mmesh you set an automation `workflow` by applying a configuration from a YAML file.

Browse the [Workflow Configuration Reference](/docs/platform/reference/mmesh-workflow.yml) section for information on the workflows YAML file format.

## Operations

You can manage your workflows using the mmesh webUI or the mmesh CLI.

### WebUI: Workflows

1. In the navigation menu on the left, click `Automation` to browse your projects.
2. Select a project to browse its workflows.

### CLI: Workflows

#### List Workflows

List all your workflows.

```shell
mmeshctl ops workflow list
```

#### Set Workflow

Create or update a workflow.

```shell
mmeshctl ops workflow set -f <yamlFile>
```

#### Show Workflow

Show all the details of a workflow.

```shell
mmeshctl workflow show
```

#### Delete Workflow

Delete a workflow with all its configuration.

```shell
mmeshctl workflow delete
```

#### Enable Workflow

Enable a previously disabled workflow.

*Disabled* workflows are inactive.

```shell
mmeshctl workflow enable
```

#### Disable Workflow

Disable a previously enabled workflow.

```shell
mmeshctl workflow disable
```

***

#### List Workflow Logs

List workflow activity logs.

```shell
mmeshctl ops log list
```

#### Show Workflow Log

Show workflow activity log.

```shell
mmeshctl ops log show
```

#### Delete Workflow Log

Remove workflow activity log from database.

```shell
mmeshctl ops log delete
```
