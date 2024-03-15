---
title: "Tenants"
description: "A mmesh tenant is a logical component of mmesh that groups networks. You can manage the tenants using mmeshctl or the mmesh webUI."
tags:
  - admin
  - networking
  - topology
  - security
---

# Tenants Administration

A mmesh `tenant` is a logical component of mmesh to allow segregating and isolating resources such as `networks`, `nodes`, `alerts` or `workflows` of an account.

!!! Info "Tenants"

    See [Topology](topology.md#tenant) section to find more information on mmesh tenants.

Tenant can be [created](adm-tenants.md#create-tenant), [listed](adm-tenants.md#list-tenants), [shown](adm-tenants.md#show-tenant) their details, [updated](adm-tenants.md#update-tenant) or [deleted](adm-tenants.md#delete-tenant).


## Operations

### Create Tenant

You can **create** a new tenant using mmesh [webUI](https://mmesh.io/app) or [mmeshctl](mmeshctl-tenants.md) CLI.

/// tab | webUI
    select: true

**Waiting for new webUI**

///

/// tab | CLI

Use the following command to create a new tenant:

```shell
mmeshctl tenant create
```

Example:

```bash
$ mmeshctl tenant create
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant Name: test
» Description: Test tenant
                                                        ───── Tenant Details ≡
══════════════════
Tenant Information
══════════════════

Tenant ID  	93d195ad-a1f0-489d-a3ea-769ff29da5a7	
Name       	test                    

```

///


### List Tenants

You can **list** your tenants using mmesh [webUI](https://mmesh.io/app) or [mmeshctl](mmeshctl-tenants.md) CLI.

/// tab | webUI
    select: true

**Waiting for new webUI**

///

/// tab | CLI

Use the following command to list all your tenants:

```shell
mmeshctl tenant list
```

Example:

```bash
$ mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

                                                               ───── Tenants ≡
═══════════
Tenant List
═══════════

TENANT NAME	DESCRIPTION                                      
-----------------------------------------------------------------
default    	Default tenant                                  	
test       	Test tenant        
```

///

### Show Tenant

You can **show** all details of a tenant using mmesh [webUI](https://mmesh.io/app) or [mmeshctl](mmeshctl-tenants.md) CLI.

/// tab | webUI
    select: true

**Waiting for new webUI**

///

/// tab | CLI

Use the following command to show all details of a tenant:

```shell
mmeshctl tenant show
```

Example:

```bash
$ mmeshctl tenant show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [test] Test tenant
                                                        ───── Tenant Details ≡
══════════════════
Tenant Information
══════════════════

Tenant ID  	93d195ad-a1f0-489d-a3ea-769ff29da5a7	
Name       	test                                	
Description	Test tenant           
```

///


Show all the details of a tenant.

```shell
mmeshctl tenant show
```

### Update Tenant

Update a tenant.

The following parameters are *editable*:

- `description`

```shell
mmeshctl tenant set
```

### Delete Tenant

Delete a tenant with all its configuration and child entities (networks, subnets, nodes).

```shell
mmeshctl tenant delete
```
