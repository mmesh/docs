---
title: "Policies"
description: "Manage policies and add, modify or remove rules."
tags:
  - cli
  - policy
---

# Policies


## Actions

Manage subnet default policy or add, edit or remove rules.

## Usage

  mmeshctl policy [command]

## Available Commands

- *show*        Show security policy

- *set-default* Set default policy

- *add-rule*    Add security policy rule

- *edit-rule*   Edit security policy rule

- *delete-rule* Delete security policy rule

- *delete*      Delete security policy (all rules)

## Example

```bash
# mmeshctl policy show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Network: [net-172-16] mmesh network
» Subnet: [subnet-172-16-0] Users
                                               ───── Security Policy Details ≡
═══════════════
Security Policy
═══════════════

Tenant ID  	bee3809d-fb18-4e5d-903e-900e8b40924f	
Network ID 	net-172-16                          	
Subnet ID  	subnet-172-16-0                     	
Description	Users                               	
Subnet CIDR	172.16.0.0/24                       	
Default Policy	[ACCEPT]	

Index	Source   	Destination  	Port/Proto	Policy	
-----	------   	-----------  	----------	------	
0    	0.0.0.0/0	172.16.0.0/16	22/TCP    	[DROP]	

# mmeshctl policy set-default
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Network: [net-172-16] mmesh network
» Subnet: [subnet-172-16-128] Cloud
» Default Security Policy: ACCEPT
                                               ───── Security Policy Details ≡
═══════════════
Security Policy
═══════════════

Tenant ID  	bee3809d-fb18-4e5d-903e-900e8b40924f	
Network ID 	net-172-16                          	
Subnet ID  	subnet-172-16-128                   	
Description	Cloud                               	
Subnet CIDR	172.16.128.0/24                     	
Default Policy	[ACCEPT]	

Index	Source	Destination	Port/Proto	Policy	
-----	------	-----------	----------	------	

# mmeshctl policy add-rule
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Network: [net-172-16] mmesh network
» Subnet: [subnet-172-16-128] Cloud
» Policy Index: 1
» Description (optional): Allow HTTPS.
» Protocol: IPv4
» Select Source: IPNet CIDR
» Source IPv4 CIDR: 0.0.0.0/0
» Select Destination: IPNet CIDR
» Destination IPv4 CIDR: 172.16.128.0/24
» Protocol: TCP
» Destination Port: 443
» Security Policy: ACCEPT
                                               ───── Security Policy Details ≡
═══════════════
Security Policy
═══════════════

Tenant ID  	bee3809d-fb18-4e5d-903e-900e8b40924f	
Network ID 	net-172-16                          	
Subnet ID  	subnet-172-16-128                   	
Description	Cloud                               	
Subnet CIDR	172.16.128.0/24                     	
Default Policy	[ACCEPT]	

Index	Source   	Destination    	Port/Proto	Policy  	
-----	------   	-----------    	----------	------  	
0    	0.0.0.0/0	172.16.128.0/24	443/TCP   	[ACCEPT]	

```
