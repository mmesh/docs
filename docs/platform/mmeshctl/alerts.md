---
title: "Alerts"
description: "List, show or delete alerts."
tags:
  - cli
  - alerts
---

# Alerts

## Actions

The command **alert** can be used to list alerts, show details of an alert, or delete alerts.


## Usage

  mmeshctl alert [command]

## Available Commands

- *list*      List your alerts
- *show*      Show alert
- *delete*    Delete alert


## Example

```bash
# mmeshctl alert list
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
                                                                ───── Alerts ≡
══════════
Alert List
══════════

LAST UPDATED / NODE NAME              	STATUS / COMPONENT               
----------------------------------------------------------------------------
█ 2024-02-13 16:33:40                 	[TRIGGERED]                     	
█ gcp-gw                              	load                            	
----------------------------------------------------------------------------
█ 2024-02-14 08:51:28                 	[RESOLVED]                      	
█ client                              	load                            	
----------------------------------------------------------------------------

# mmeshctl alert show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Alert: 2024-02-13 16:33:40 gcp-gw                           [TRIGGERED]
  Component: load | Group: HOST_METRICS | Class: HOST

                                                                ───── Alerts ≡
═════════════════
Alert Information
═════════════════

Tenant ID       <Tenant_ID_removed>                          
Alert ID        <Account_ID_removed>                      
Timestamp       2024-02-13 16:33:40.662 +0100 CET                             
Node ID         <Tenant_ID_removed>                          
Node Name       gcp-gw                                                        
Class           HOST                                                          
Group           HOST_METRICS                                                  
Component       Load                                                          
Severity        [WARNING]                                                     
Status          [TRIGGERED]                                                   
Last Updated    2024-02-13 16:33:40.708 +0100 CET                             
Summary         [WARNING] High LOAD average on node gcp-gw                    
Details         Load Average: 100%                                    
```

