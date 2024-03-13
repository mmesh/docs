---
title: "Automation"
description: "Learn how to use mmesh as your automation engine and scheduler for your infrastructure."
tags:
  - ops
---

# Automation

mmesh provides your nodes with an automation engine and task scheduler.

In mmesh we have the capability to execute your workflows automatically on any mmesh-node. Not only this, our Workflows application page provides a single point of control for all your workflows, no matter where they are executed.

The automation subsystem of mmesh is based on `workflows`. A workflow defines a set of tasks to be executed on a node with a given schedule. Then `workflows` are organized in `projects`.

## Projects

A `project` is a logical group of workflows where common policies are defined that must be applied to all workflows belonging to the project.

Create different projects depending on your organization, either by department, environment, or any organizative unit that requires to control their automations.


### Project's Service Management Features

Currently the options you can configure on a project are *revision* and *approval*. You can define them independently for each project.

- `Review Required`: [ yes | no ]

  Allows peer reviews to be applied to workflows before they can run on target nodes.

- `Approval Required`: [ yes | no ]

  Use this policy when service management policies require approval (from the customer or service manager) on workflows before they can be executed on target nodes.

Check the [project administration documentation](adm-projects.md) for more information o projects.

## Workflows

The automation subsystem of mmesh is based on `workflows`. A workflow contains a set of tasks with a defined schedule, and a target node. 

Workflows are configured using declarative YAML files that you can easily manage via GitOps to define and schedule tasks, target nodes, notification recipients, reviewers, and approvers.

Check the [workflow administration documentation](adm-workflows.md) for more information o projects.
