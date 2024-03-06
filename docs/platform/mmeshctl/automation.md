---
title: "Automation"
description: "Description."
tags:
  - cli
  - project
  - workflow
  - tasklog
  - automation
---

# Automation


## Actions

Use the **ops** menu options to manage *projects*, *workflows* and *tasklogs*.

Check the workflow file reference guide [here](/docs/platform/reference/workflow.yml/).

## Usage

  mmeshctl ops [command]

## Available Commands

- `project`     Workflow projects administration

    - `list`        List projects

    - `show`        Show project

    - `create`      Create a project

    - `update`      Update a project

    - `delete`      Remove project

- `tasklog`     Workflow tasklog administration

    - `list`        List tasklogs

    - `show`        Show log

    - `delete`      Delete log

- `workflow`    Automation workflows administration

    - `list`        List workflows

    - `show`        Show workflow

    - `create`      Create workflow from YAML file

    - `update`      Update workflow from YAML file

    - `delete`      Remove workflow

    - `enable`      Enable workflow

    - `disable`     Disable workflow

## Example

```bash
# mmeshctl ops project update
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: demo
» Name: demo
» Description: Demo project.
» Enable workflow-required reviews? No
» Enable workflow-required approvals? No
                                                  ───── Ops: Project Details ≡
═══════════════════
Project Information
═══════════════════

Tenant ID  	<Tenant_ID_removed>	
Project ID 	<Project_ID_removed>	
Name       	demo                                	
Description	Demo project.                       	

ChatOps and Service Management Features
───────────────────────────────────────

Review Required  	[no]	
Approval Required	[no]	


```

