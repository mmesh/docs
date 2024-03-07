---
title: "Alerts"
description: "mmesh monitors your nodes and generates alerts when important events occur. Learn how to manage your alerts using mmeshctl or the webUI."
tags:
  - admin
  - alerts
---

# Alerts Administration

mmesh monitors your nodes and generates alerts when important events occur.

> See [Alerts](/docs/platform/monitoring/alerts/) section to find more information on mmesh alert system.

## Operations

You can manage your alerts using `mmeshctl` or the mmesh webUI.

### WebUI: Alerts

1. In the navigation menu on the left, click `Alerts` to browse your alerts.

### CLI: Alerts

#### List Alerts

List your alerts.

```shell
mmeshctl alert list
```

#### Show Alert

Show all the details of an alert.

```shell
mmeshctl alert show
```

#### Delete Alert

Remove an alert from the database.

```shell
mmeshctl alert delete
```
