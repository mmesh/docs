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

A mmesh `tenant` is a logical component of mmesh that groups `networks`, `nodes`, `alerts` and `workflows`.

!!! Info "Tenants"

    See [Topology](topology.md#tenant) section to find more information on mmesh tenants.

## Operations

### List Tenants

You can list your tenants using mmesh [webUI](https://mmesh.io/app/account) or [mmeshctl](mmeshctl-tenants.md) CLI.

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
demo       	Demo tenant        
```

///



### Create Tenant

Create a new tenant.

```shell
mmeshctl tenant set
```

### Show Tenant

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
