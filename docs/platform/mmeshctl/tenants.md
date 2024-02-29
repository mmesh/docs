---
title: "Tenants"
description: "Manage tenants: list, show details, create, update or delete."
tags:
  - cli
  - tenant
---

# Tenants

## Actions

Manage **tenants**: you can create, update or delete tenants, as well as list them or check their details. Use the *update* command to modify a tenant name or description.

## Usage

  mmeshctl tenant [command]

## Available Commands

- **list**        List tenants

- **show**        Show tenant

- **create**      Create tenant

- **update**      Update tenant details

- **delete**      Remove tenant

## Example

```bash
# mmeshctl tenant list
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

                                                               ───── Tenants ≡
═══════════
Tenant List
═══════════

TENANT NAME	DESCRIPTION                                      
-----------------------------------------------------------------
demo       	Demo tenant                                     	

# mmeshctl tenant show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
                                                        ───── Tenant Details ≡
══════════════════
Tenant Information
══════════════════

Tenant ID  	<Tenant_ID_removed>	
Name       	demo                                	
Description	Demo tenant                         	
```
