---
title: "Projects Administration"
description: "An mmesh project is a logical component of mmesh that groups automation workflows. You can manage the projects using mmeshctl or the mmesh webUI."
tags:
  - admin
  - ops
  - projects
---

# Projects Administration

A `project` organizes `workflows` in a logical group. A `workflow` is a set of tasks that are executed on a node.

A `project` allows to define common policies to be enforced for all the `workflows` belonging to the project.

## Service Management Features

Currently the options you can configure on a project are the following:

- `Review Required`: [ yes | no ]

  Allows to enforce peer-reviews on the workflows before they can run on the target nodes.

- `Approval Required`: [ yes | no ]

  It allows for a service management policy to enforce approval before a workflow is scheduled on a node. The approval can be provided by a customer or service responsible, 
  before workflows can run.

## Create Project

Projects can be created using mmesh webUI or mmeshctl CLI:

/// tab | webUI
    select: true

Go to the Workflows section on the [mmesh.io](https://mmesh.io/app/workflows) application and select `Add project`.

![mmesh new project form](../../assets/images/workflows/NewProject.png)

Provide a name and a description for your project and press `Add new project`. Select `Review Required`, `Approval Required`, or both, if required by your organization service management policy.

///

/// tab | CLI

Use the [mmeshctl](cli-install.md) CLI command `mmeshctl ops project create` to create a project. 

Example:

```bash
# mmeshctl ops project create
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Name: demo
» Description: Demo Project.
» Enable workflow-required reviews? No
» Enable workflow-required approvals? No
                                                  ───── Ops: Project Details ≡
═══════════════════
Project Information
═══════════════════

Tenant ID  	<Tenant_ID_removed>	
Project ID 	<Project_ID_removed>	
Name       	demo                                	
Description	Demo Project.                       	

ChatOps and Service Management Features
───────────────────────────────────────

Review Required  	[no]	
Approval Required	[no]
```

///

!!! note "Keep the Tenant and Project IDs."
    Take note of the TenantID and the ProjectID as both will be required to define the workflows.


## List Projects

List all your projects either using the webUI or mmeshctl CLI:

/// tab | webUI
    select: true

Go to the Workflows section on the [mmesh.io](https://mmesh.io/app/workflows) application to check your `Projects`.

Example: 

![Project list.](../../assets/images/workflows/ProjectList.png)

///

/// tab | CLI

Use the [mmeshctl](cli-install.md) CLI command `mmeshctl ops project list` to list your projects. 

Example:

```bash
# mmeshctl ops project list
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
                                                         ───── Ops: Projects ≡
════════════
Project List
════════════

PROJECT NAME            	DESCRIPTION                              
----------------------------------------------------------------------
project-2               	Second Project                          	
demo                    	Demo project.                           	

```

///


## Show Project

To show all the details of a project choose either webUI or CLI:

/// tab | webUI
    select: true

Go to the Workflows section on the [mmesh.io](https://mmesh.io/app/workflows) and select a `project` to show its details.

Example:

![Project show.](../../assets/images/workflows/ProjectShow.png)

///

/// tab | CLI

Use the [mmeshctl](cli-install.md) CLI command `mmeshctl ops project show` to show details for a project.

Example:

```bash
# mmeshctl ops project show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: demo
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

///

## Update Project

Update a project to modify its `name`, `description`, and `review` or `approval` requirements.


/// tab | webUI
    select: true

Go to the Workflows section on the [mmesh.io](https://mmesh.io/app/workflows) and select a `project` to show its details. Then press the `edit` button on the top-right, modify as required, and press `save`.

Example:

![Project update.](../../assets/images/workflows/ProjectUpdate.png)

///

/// tab | CLI

Use the [mmeshctl](cli-install.md) CLI command `mmeshctl ops project update` to modify project parameters such as its `name`, `description`, and `review` or `approval` requirement.

```bash
# mmeshctl ops project update
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: project-2
» Name: project-2
» Description: Second demo project.
» Enable workflow-required reviews? No
» Enable workflow-required approvals? No
                                                  ───── Ops: Project Details ≡
═══════════════════
Project Information
═══════════════════

Tenant ID  	<Tenant_ID_removed>	
Project ID 	<Project_ID_removed>	
Name       	project-2                           	
Description	Second demo project.                	

ChatOps and Service Management Features
───────────────────────────────────────

Review Required  	[no]	
Approval Required	[no]	
```

///

## Delete Project

Delete a project with all its configuration and child entities (workflows).

/// tab | webUI
    select: true

Go to the Workflows section on the [mmesh.io](https://mmesh.io/app/workflows) and select the `bin` next to the `project` that you want to remove.

Example:

![Project delete.](../../assets/images/workflows/ProjectDelete.png)


///

/// tab | CLI

Use the [mmeshctl](cli-install.md) CLI command `mmeshctl ops project delete` to delete a project and all its child workflows.

```bash
# mmeshctl ops project delete
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: project-2

» Confirm deletion? Yes

   Done

```

///
