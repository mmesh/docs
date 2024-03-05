---
title: "Projects"
description: "A project is a logical group of workflows where you define common policies to be enforced on all the workflows belonging to the project."
tags:
  - ops
  - automation
  - projects
---

# Projects

The automation `workflows` are organized in `projects`.

A project is a logical group of workflows where you define common policies to be enforced on all the workflows belonging to the project.

## Service Management Features

Currently the options you can configure on a project are the following:

- `Review Required`: [ yes | no ]

  Allows to enforce peer-reviews on the workflows before they can run on the target nodes.

- `Approval Required`: [ yes | no ]

  Useful when the service management policies require approval (from customer or service responsible) on the workflows before they can run on the target nodes.

  To configure reviewers and approvers, add this configuration snippet to the yaml workflow configuration file.

```plain
reviewers:
  - "<email-address>"
approvers:
  - "<email-address>"
```

## Configuration

Projects can be easily created using the mmesh webUI Workflows page and pressing `Add Project` or using the meshctl CLI as described [here](/docs/platform/mmeshctl/automation/).
