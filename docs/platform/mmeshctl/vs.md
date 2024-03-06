---
title: "Virtual Servers"
description: "Manage virtual servers and their services in high-availability groups."
tags:
  - cli
  - virtualserver
---

# Virtual Servers


## Actions

Manage **virtual servers** and their services in high-availability groups.


## Usage

  mmeshctl vs [command]

## Available Commands

- `list`            List virtual servers

- `show`            Show virtual server

- `create`          Create virtual server

- `update`          Update virtual server

- `add-node-svc`    Add node app service to VS high-availability group

- `remove-node-svc` Remove node app service from VS high-availability group

- `delete`          Remove virtual server

## Example

```bash
# mmeshctl vs list
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

                                                       ───── Virtual Servers ≡
═══════
VS List
═══════

VS ID                               	NAME 	DESCRIPTION                      
---------------------------------------------------------------------------------
                    	
<-----------VS_ID_Removed---------->	nginx	nginx service                   	

```
