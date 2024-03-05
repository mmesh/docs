---
title: "Workflows"
description: "A workflow defines a set of tasks to be executed on a node with a given schedule."
tags:
  - ops
  - workflows
---

# Workflows

The automation subsystem of mmesh is based on `workflows`. A workflow defines a set of tasks to be executed on a node with a given schedule.

Workflows are configured using a declarative YAML file where you define the jobs or processes (tasks) you want to automate, their schedule configuration, the target node and other parameters like notification recipients and reviewers/approvers.

Check this how-to [guide](/docs/platform/howtos/workflow-basics/) for a step-by-step example that will guide you in creating your first workflow.

For a list of actions you can perform with workflows, see this administration [guide](/docs/platform/administration/ops-workflows/). Or review the mmeshctl CLI [ops](/docs/platform/mmeshctl/automation/) commands to manage projects and workflows.

YAML workflow configuration file reference details can be found [here](/docs/platform/reference/workflow/).
