---
title: "Networks"
description: "Description."
tags:
  - tag1
  - tag2
---

# Networks


## Actions

Use the **network** command to list, show details, create, update or delete networks.

## Usage

  mmeshctl  network [command]

## Available Commands

- *list*        List networks
- *show*        Show network
- *create*      Create a network
- *update*      Update a network
- *delete*      Remove network

## Example

```bash
# mmeshctl network list
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
                                                              ───── Networks ≡
════════════
Network List
════════════

NETWORK ID	NETWORK CIDR 	DESCRIPTION                      
---------------------------------------------------------------
net-172-16	172.16.0.0/16	mmesh network                  
```

