---
title: "[How-To] Workflow basics"
description: "Create your first workflow with this step-by-step guide."
tags:
  - how-to
  - ops
  - workflows
---

# Workflow basics

## Introduction

A **workflow** defines a task or set of tasks to be executed on a node with a given schedule. Workflows are organized in **projects**.

In this how-to we will provide you a step-by-step guide to configure, execute and review the logs of your first workflow.

## Project creation

First we need to create a Project. Go to the Workflows section on the [mmesh.io](https://mmesh.io/app/workflows) application and select `add project`.

<figure markdown>
  ![mmesh new project form](/docs/platform/howtos/assets/images/NewProject.png){ width="550" }
  <figcaption>New Project form</figcaption>
</figure>

Provide a name and a description for your project and press `Add new project`. Do not select any workflow policy yet, we will explain them later.

Alternatively, a project can be created using [mmeshctl](../installation/cli.md) CLI command `mmeshctl ops project create`. Example:

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

Take note of the TenantID and the ProjectID as both will be required to define the workflow.

## Workflow configuration

A workflow is executed on a node. To identify the node, select the node where you want your workflow to be executed and take note of its **NodeID**.

To configure a workflow, create a file named `workflow.yml` with this content:

```yaml
# mmesh workflow
apiVersion: v1
kind: Workflow

projectID: <Replace with your ProjectID>

name: workflow
description: Workflow sample.

enabled: true

triggers:
  schedule:
    enabled: true
    crontab: "0,5,10,15,20,25,30,35,40,45,50,55 * * * *" # min hour dayOfMonth month dayOfWeek

tasks:
  - name: uptime
    description: uptime command
    command:
      cmd: /usr/bin/uptime

targets:
  - tenantID: <Replace with your TenantID>
    nodeID: <Replace with your NodeID>
```

This will create a workflow consisting of a task with the command `uptime` to be executed every 5 minutes.

Replace on the `workflow.yml` file your **TenantID**, **ProjectID** and **NodeID** where stated.

## Workflow creation

Once the YAML workflow configuration file is ready, the workflow is created with the command `mmeshctl ops workflow create -f workflow.yml`. Example:

```bash
mmeshctl ops workflow create -f workflow.yml
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: demo
                                                 ───── Ops: Workflow Details ≡
════════════════════
Workflow Information
════════════════════

Tenant ID  	<Tenant_ID_removed>	
Project ID 	<Project_ID_removed>	
Workflow ID	<Workflow_ID_removed>	
Name       	workflow                            	
Description	Workflow sample.                    	
Enabled    	[yes]                               	
Reviewed   	[yes]                               	
Approved   	[yes]                               	

Triggers
────────

Workflow Webhook	[disabled]	

Workflow Crontab	[enabled]	0,5,10,15,20,25,30,35,40,45,50,55 * * * *	

Tasks
─────

Task Name	Command        	Args	UID	GID	
---------	-------        	----	---	---	
uptime   	/usr/bin/uptime	    	0  	0  	

Targets
───────

Tenant	Node                            	
------	----                            	
demo  	client-b                        	

Activity
────────

Successful Events  	0000000                      	
Failed Events      	0000000                      	
First Activity     	1970-01-01 01:00:00 +0100 CET	
Last Activity      	1970-01-01 01:00:00 +0100 CET	
Activity Index     	0.0000                       	
Failure Probability	0.00%                        	
Score              	0.00                         	
Resource Rating    	[n/a]  
```

Take note of the provided workflow ID, as it is required if you want to modify the created workflow, by adding it just below your Project ID:

```yaml
projectID: <Replace with your ProjectID>
workflowID: <Replace with your WorkflowID>
```

In a few minutes this workflow will be executed and we will be able to check its log and output.

## Check workflow logs

Wait a few minutes and on the **Workflows** section on the [mmesh.io](https://mmesh.io/app/workflows) application the executions of your task will appear:

<figure markdown>
  ![mmesh workflow execution](/docs/platform/howtos/assets/images/WorkflowExecution.png){ width="1100" }
  <figcaption>Workflow execution</figcaption>
</figure>

Select one of the executions and you will get all the information about it, plus the output of your task:

<figure markdown>
  ![mmesh task output](/docs/platform/howtos/assets/images/TaskOutput.png){ width="1100" }
  <figcaption>Task output</figcaption>
</figure>

At any time, you can disable a **workflow** and stop it to keep executing with the command `mmeshctl ops workflow disable` and selecting it through your tenant, project and workflow. Replace `disable` for `enable` at any time to re-enable it.

## Remove workflow logs

You can remove workflow task execution logs either using by selecting the "bin" on the right on the mmesh web application, or using the command `mmeshctl ops tasklog delete`. Example:

```bash
# mmeshctl ops tasklog delete
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: demo
» Workflow: workflow
» TaskLog: Task: uptime | Timestamp: 2024-03-01 17:00:00.012 +0100 CET
  Target: client-b


» Confirm deletion? Yes

   Done

```

## Update a workflow

To update a workflow, first you need to add to it the provided **workflow ID** as stated before. You can check it on the mmesh web app or using the command `mmeshctl ops workflow show`. Example:

```bash
# mmeshctl ops workflow show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: demo
» Workflow: workflow
                                                 ───── Ops: Workflow Details ≡
════════════════════
Workflow Information
════════════════════

Tenant ID  	<Tenant_ID_removed>	
Project ID 	<Project_ID_removed>	
Workflow ID	<Workflow_ID_removed>	
Name       	workflow                            	
Description	Workflow sample.                    	
Enabled    	[yes]                               	
Reviewed   	[yes]                               	
Approved   	[yes]                               	

Triggers
────────

Workflow Webhook	[disabled]	

Workflow Crontab	[enabled]	0,5,10,15,20,25,30,35,40,45,50,55 * * * *	

Tasks
─────

Task Name	Command        	Args	UID	GID	
---------	-------        	----	---	---	
uptime   	/usr/bin/uptime	    	0  	0  	

Targets
───────

Tenant	Node                            	
------	----                            	
demo  	client-b                        	

Activity
────────

Successful Events  	0000006                          	
Failed Events      	0000000                          	
First Activity     	2024-03-01 17:00:01.388 +0100 CET	
Last Activity      	2024-03-01 17:25:01.338 +0100 CET	
Activity Index     	0.0040                           	
Failure Probability	0.00%                            	
Score              	6.00                             	
Resource Rating    	[A]                              	
Last Event Result  	[SUCCESS]                        	

```

Once the YAML workflow configuration file is updated, modify it with the command `mmeshctl ops workflow update -f workflow.yml`. Example:

```bash
# mmeshctl ops workflow update -f workflow.yml 
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: demo
» Workflow: workflow
                                                 ───── Ops: Workflow Details ≡
════════════════════
Workflow Information
════════════════════

Tenant ID  	<Tenant_ID_removed>	
Project ID 	<Project_ID_removed>	
Workflow ID	<Workflow_ID_removed>	
Name       	workflow                            	
Description	Workflow sample.                    	
Enabled    	[no]                                	
Reviewed   	[yes]                               	
Approved   	[yes]                               	

Triggers
────────

Workflow Webhook	[disabled]	

Workflow Crontab	[enabled]	0,5,10,15,20,25,30,35,40,45,50,55 * * * *	

Tasks
─────

Task Name	Command        	Args	UID	GID	
---------	-------        	----	---	---	
uptime   	/usr/bin/uptime	    	0  	0  	

Targets
───────

Tenant	Node                            	
------	----                            	
demo  	client-b                        	

Activity
────────

Successful Events  	0000006                          	
Failed Events      	0000000                          	
First Activity     	2024-03-01 17:00:01.388 +0100 CET	
Last Activity      	2024-03-01 17:25:01.338 +0100 CET	
Activity Index     	0.0040                           	
Failure Probability	0.00%                            	
Score              	6.00                             	
Resource Rating    	[A]                              	
Last Event Result  	[SUCCESS]                        	

```
In this sample we have only disabled it, but you can change the command, its schedule, or any other requirement.

## Remove a workflow

To remove a workflow, on the workflows mmesh application page, you can delete your task execution logs by selecting the "bin" on the right. If you want to do it by command, execute the command `mmeshctl opw workflow delete`. Example:

```bash
# mmeshctl ops workflow delete
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: demo
» Workflow: workflow

» Confirm deletion? Yes

   Done

```

## Workflow Policies

At the **project** level, you can select if a **workflow** requires peer **review**, **approval,** or **both**. On the application select your project, select the edit button, and mark both checkboxes to enable **review** and **approval**.

Now let's configure who will review and who will approve. For this edit the previous `workflow.yml` file and add to it:

```yaml
reviewers:
  - "<email-address>"
approvers:
  - "<email-address>"
```

Replace each of them with the email addresses of your reviewers and approvers.

When you create a new workflow, reviewers will receive an email. When the workflow has been reviewed, a second email for approval will be sent to the approvers. Finally, when approval is granted, the workflow will be enabled.
