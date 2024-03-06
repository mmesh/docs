---
title: "Subnets"
description: "Description."
tags:
  - cli
  - subnet
---

# Subnets


## Actions

Use the **subnet** command to list, show details, create, update or delete subnets. Additionally you can remove IPAM entries manually.

## Usage

  mmeshctl subnet [command]

## Available Commands

- `list`              List subnets
- `show`              Show subnet
- `create`            Create a new subnet
- `update`            Update a subnet
- `delete`            Remove subnet
- `delete-ipam-entry` Delete IPAM entry manually


## Example

```bash
# mmeshctl subnet list
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Network: [net-172-16] mmesh network
                                                               ───── Subnets ≡
═══════════
Subnet List
═══════════

SUBNET ID        	SUBNET CIDR    	DESCRIPTION                      
------------------------------------------------------------------------
subnet-172-16-15 	172.16.15.0/24 	Services                        	
subnet-172-16-0  	172.16.0.0/24  	Users                           	
subnet-172-16-128	172.16.128.0/24	Cloud   

# mmeshctl subnet show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Network: [net-172-16] mmesh network
» Subnet: [subnet-172-16-0] Users
                                                        ───── Subnet Details ≡
══════════════════
Subnet Information
══════════════════

Tenant ID  	bee3809d-fb18-4e5d-903e-900e8b40924f	
Network ID 	net-172-16                          	
Subnet ID  	subnet-172-16-0                     	
Description	Users                               	

IP Address Management (IPAM)
────────────────────────────

Network CIDR            	172.16.0.0/16	
Subnet CIDR             	172.16.0.0/24	
IPv4 Addresses Available	252          	
IPv4 Addresses Leased   	2            	

IPv4 Address	IPv6 Address      	Endpoint                         
----------------------------------------------------------------------
172.16.0.78 	fd77:f:ac10:4e:1::	client-a                        	
172.16.0.28 	fd77:f:ac10:1c:1::	client-b                        	

Security Policy
───────────────

Default Policy	[ACCEPT]	

Index	Source	Destination	Port/Proto	Policy	
-----	------	-----------	----------	------	

```

