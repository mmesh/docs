---
title: "Nodes"
description: "Manage nodes, endpoints and node disconnect from network or subnet changes."
tags:
  - cli
  - nodes
---

# Nodes


## Actions

The **node** command manages the node's lifecycle. It provides options to add, list, show details, show metrics and delete nodes.

Nodes can be disconnected from the network or moved to a different subnet. This is done using the subcommands *disable-networking* and *connect*.

Each node, upon the first connection to the network, will create an endpoint. The subcomands *show-endpoint* and *delete-endpoint* allow to check their details or to delete them.

## Usage

  mmeshctl node [command]

## Available Commands

- `add`                Add a new node

- `list --by-tenant`               List nodes by tenant

- `list --by-subnet`               List nodes by subnet

- `show`               Show node

- `connect`            Connect (move) node to a subnet

- `disable-networking` Disable mmesh networking and disconnect node from a subnet

- `delete`             Remove node from database

- `metrics`            Show detailed metrics

- `show-endpoint`      Show network endpoint details

- `delete-endpoint`    Delete network endpoint

## Example

```bash
# mmeshctl node show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Node: [client-a] Mike's PC
                                                          ───── Node Details ≡
════════════════
Node Information
════════════════

Tenant ID       <Tenant_ID_removed>
Network ID      net-172-16                          
Subnet ID       subnet-172-16-0                     
Node ID    	<Node_ID_removed>	
Node Name  	client-a                            	
Description	Mike's PC                           	
Status     	[online]                            	

-----NODE AUTHORIZATION TOKEN-----
<Token_removed>
-----NODE AUTHORIZATION TOKEN-----

OS         	Linux                                                       	
Uptime     	1 day, 4 hours, 38 minutes                                  	
Maintenance	[auto-update] Scheduled [02:00]                             	
Options    	[exec] [transfer] [portForward] [workflows]                 	
External IP	n/a                                                         	
Port       	57775                                                       	
DNS Port   	udp/53535                                                   	
Routing    	[priority-6]                                                	
Resources  	Load 0.000000 | RAM [54%] █████░░░░░ | Disk [76%] ███████░░░	

Routing: Advertised Routes
──────────────────────────


Routing: Imported Routes
────────────────────────

 ■ 10.0.0.0/18
 ■ 10.0.64.0/18
 ■ 10.0.128.0/18

Node Endpoints
──────────────

Endpoint ID / FQDN  	IPv4       	IPv6              
------------------  	----       	----              
client-a            
client-a.mmesh.local	172.16.0.78	fd77:f:ac10:4e:1::
```

```bash
# mmeshctl node list --by-tenant
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
                                                                 ───── Nodes ≡
═════════
Node List
═════════

NODE NAME / FQDN                  	IPv4          	FLAGS / ENDPOINT     
----------------------------------------------------------------------------
█ aws-gw                          	              	[prio-6] [tier-1]   	
█ aws-gw.mmesh.local              	172.16.128.115	aws-gw              	
----------------------------------------------------------------------------
█ az-gw                           	              	[prio-6] [tier-1]   	
█ az-gw.mmesh.local               	172.16.128.98 	az-gw               	
----------------------------------------------------------------------------
█ client-a                        	              	[prio-6]            	
█ client-a.mmesh.local            	172.16.0.78   	client-a            	
----------------------------------------------------------------------------
█ client-b                        	              	[prio-6] [tier-1]   	
█ client-b.mmesh.local            	172.16.0.28   	client-b            	
----------------------------------------------------------------------------
█ gcp-gw                          	              	[prio-6] [tier-1]   	
█ gcp-gw.mmesh.local              	172.16.128.186	gcp-gw              	
----------------------------------------------------------------------------
█ mgw-subnet-172-16-15-1708418135 	              	[prio-2]            	
█ mgw-subnet-172-16-15-17084181...	172.16.15.71  	mgw-subnet-172-16...	
█ nginx-service.default.mmesh.l...	172.16.15.182 	k8s:default:nginx...	
----------------------------------------------------------------------------
█ nginx-depl-585b788df7-2fgzr     	              	[prio-3]            	
█ nginx-depl-585b788df7-2fgzr.d...	172.16.15.106 	nginx-depl-585b78...	
----------------------------------------------------------------------------

```
