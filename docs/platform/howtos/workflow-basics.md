---
title: "Workflow basics"
description: "Create your first workflow with this step-by-step guide."
tags:
  - how-to
  - ops
  - workflows
---

# Workflow basics

## Introduction

A **workflow** defines a task or set of tasks to be executed on a node with a given schedule. Workflows are organized in **projects**.

In this how-to we will provide you a step-by-step guide to configure and execute of your first workflow, plus how to review its logs.

## Project creation

First we need to create a Project. 

/// tab | webUI
    select: true

Go to the Workflows section on the [mmesh.io](https://mmesh.io/app/workflows) application and select `add project`.

![mmesh new project form](../assets/images/workflows/NewProject.png)

Provide a name and a description for your project and press `Add new project`. Do not select any workflow policy yet, we will explain them later.

///

/// tab | CLI

Use the [mmeshctl](cli.md) CLI command `mmeshctl ops project create` to create a project. Example:

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
    Take note of the TenantID and the ProjectID as both will be required to define the workflow.

## Workflow configuration

A workflow is executed on a node. To identify the node, select the node where you want your workflow to be executed and take note of its **NodeID**.

/// tab | webUI
    select: true

On the webUI, select the `Topology` page and select the node where you want to execute your workflows. On the opened screen you'll be able to check the NodeID. Example:

![NodeID code.](../assets/images/workflows/NodeId.png)

///

/// tab | CLI

Use the [mmeshctl](cli.md) CLI command `mmeshctl node show` to check your node details. Example:

```bash
meshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Node: [nginx-depl-585b788df7-2fgzr] [k8s-pod] nginx-depl
                                                          ───── Node Details ≡
════════════════
Node Information
════════════════

Tenant ID       <Tenant_ID_removed>
Network ID      net-172-16                          
Subnet ID       subnet-172-16-15                    
Node ID    	<Node_ID_removed>	
Node Name  	nginx-depl-585b788df7-2fgzr         	
Description	[k8s-pod] nginx-depl                	
Status     	[online]                            	

-----NODE AUTHORIZATION TOKEN-----
<Toked_Removed>
-----NODE AUTHORIZATION TOKEN-----

OS         	Linux                                                       	
Uptime     	3 days, 5 hours, 41 minutes                                 	
Maintenance	[auto-update] Scheduled [05:00]                             	
Options    	[exec] [transfer] [portForward] [workflows]                 	
External IP	n/a                                                         	
Port       	57775                                                       	
DNS Port   	udp/53535                                                   	
Routing    	[priority-3]                                                	
Resources  	Load 1.240000 | RAM [77%] ███████░░░ | Disk [67%] ██████░░░░	

Routing: Advertised Routes
──────────────────────────


Routing: Imported Routes
────────────────────────


Node Endpoints
──────────────
/docs/platform/howtos
Endpoint ID / FQDN                  	IPv4         	IPv6               
------------------                  	----         	----               
nginx-depl-585b788df7-2fgzr.default 
nginx-depl-585b788df7-2fgzr...      	172.16.15.106	fd77:f:ac10:f6a:1::

```

///

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

!!! note "Keep the Project ID."

    Take note of the provided workflow ID, as it is required if you want to modify the created workflow. For this, add the workflow ID just below the Project ID on the `workflow.yml` file:

    ```yaml
    projectID: <Replace with your ProjectID>
    workflowID: <Replace with your WorkflowID>
    ```

In a few minutes this workflow will be executed and we will be able to check its log and output.

## Check workflow logs

One a workflow is executed, its task log can be checked either using the webUI or the CLI.

/// tab | webUI
    select: true

On the **Workflows** section on the [mmesh.io](https://mmesh.io/app/workflows) application, check the task result under the workflow:

![Workflow execution.](../assets/images/workflows/WorkflowExecution.png)

Select one of the executions and you will get all the information about it, plus the output of your task:

![Task output.](../assets/images/workflows/TaskOutput.png)

///

/// tab | CLI

To check a workflow execution log (tasklog) using CLI, execute the command `mmeshctl ops tasklog show`and choose your tenant, project, workflow and tasklog. Example:

```bash
mmeshctl ops tasklog show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Project: demo
» Workflow: workflow
» TaskLog:  [Use arrows to move, type to filter]
🢂 Task: uptime | Timestamp: 2024-03-06 10:50:00.008 +0100 CET
  Target: client-b

  Task: uptime | Timestamp: 2024-03-06 10:55:00.011 +0100 CET
  Target: client-b
» TaskLog: Task: uptime | Timestamp: 2024-03-06 10:50:00.008 +0100 CET
  Target: client-b

                                                  ───── Ops: TaskLog Details ≡
═══════════════════
TaskLog Information
═══════════════════

Tenant ID               <Tenant_ID_removed>
Project ID              <Project_ID_removed>
Workflow ID             <Workflow_ID_removed>	
TaskLog ID              <Tasklog_ID_removed>
Task Name               uptime                              
Task Description        uptime command                      
Tenant                  demo                                
Node                    client-b                            
Result                  [EXECUTED]                          
Timestamp               2024-03-06 10:50:00.008 +0100 CET   

Activity Log
────────────

-----BEGIN OUTPUT-----
 10:50:00 up 22:52,  1 user,  load average: 0.72, 1.29, 1.68
-----END OUTPUT-----

```

///

## Disable or Enable workflows

At any time, you can disable a **workflow** to stop it to keep executing with the command `mmeshctl ops workflow disable` and selecting it through your tenant, project and workflow. Replace `disable` for `enable` on the CLI command to re-enable it.

## Remove workflow logs

You can remove workflow task execution logs either using the webUI or the mmesctl CLI.

///tab | webUI
    select: true

On the `Workflows` section, presss the "bin" on the right on the tasklog that you want to delete:

![Tasklog bin.](../assets/images/workflows/TasklogBin.png)

Confirm the deletion when requested.
 
 ///

 /// tab | CLI
 
Use the command `mmeshctl ops tasklog delete`, select the tenant, project, workflow and tasklog to delete it. 

Example:

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
///

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
