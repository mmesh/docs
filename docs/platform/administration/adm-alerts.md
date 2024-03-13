---
title: "Alerts Administration"
description: "mmesh monitors your nodes and generates alerts when important events occur. Learn how to manage your alerts using mmeshctl or the webUI."
tags:
  - admin
  - alerts
---

# Alerts Administration

mmesh monitors your nodes and generates alerts when important events occur.

!!! info "Alerts"

    See [Alerts](monitoring.md) section to find more information on mmesh alert system.


The Alerts can be [listed](adm-alerts.md#list-alerts), [shown](adm-alerts.md#show-alerts) their details or [deleted](adm-alerts.md#delete-alerts).

## List Alerts

You can list your alerts using mmesh webUI or mmeshctl CLI.

/// tab | webUI
    select: true

**Waiting for new webUI**

///

/// tab | CLI

List your alerts with the mmeshctl CLI command:

```shell
mmeshctl alert list
```

Example:

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

LAST UPDATED / NODE NAME                STATUS / COMPONENT               
----------------------------------------------------------------------------
█ 2024-02-13 16:33:40                   [TRIGGERED]                         
█ gcp-gw                                load                                
----------------------------------------------------------------------------
█ 2024-02-14 08:51:28                   [RESOLVED]                          
█ client                                load                                
----------------------------------------------------------------------------

```

///



## Show Alert

Show all the details of an alert.

/// tab | webUI
    select: true

**Waiting for new webUI**

///

/// tab | CLI

Show details of alerts with the mmeshctl CLI command:

```shell
mmeshctl alert show
```

By selecting your `tennant` and then the `alert`.

Example:

```bash
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

///

## Delete Alert

Remove an alert from the database.

/// tab | webUI
    select: true

**Waiting for new webUI**

///

/// tab | CLI

Delete alerts with the mmeshctl CLI command:

```shell
mmeshctl alert delete
```

By selecting your `tennant` and then the `alert`.

```bash
# mmeshctl alert delete
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

» Tenant: [demo] Demo tenant
» Alert: 2024-02-23 16:18:33 nginx-depl-585b788df7-2fgzr      [RESOLVED]
  Component: memory | Group: HOST_METRICS | Class: HOST


» Confirm deletion? Yes

   Done

```
