---
title: "[Monitoring] Alerts"
description: "mmesh monitors the nodes and generates alerts when it detects a node is unhealthy. Integrations with PagerDuty and Slack are supported."
---

# Alerts

mmesh monitors the nodes and generates alerts when it detects the following events:

- Node offline (disconnected from mmesh)
- Node rebooted
- CPU Usage reaches 90%
- Memory Usage reaches 90%
- Disk Usage reaches 90%

## Integrations

### PagerDuty

The PagerDuty integration allows you to forward all the alerts of your mmesh to your PagerDuty account.

mmesh highly recommends the PagerDuty service and configuring this integration to take full advantage of the mmesh alert system.

[PagerDuty Integration Configuration >](/docs/platform/administration/account/#pagerduty)

### Slack

You can also configure a Slack webhook for mmesh to notify you when an alert has been triggered.

[Slack Integration Configuration >](/docs/platform/administration/account/#slack)

## Administration

You can manage your alerts using the mmesh webUI or `mmeshctl`.

Browse the [Alerts Administration](/docs/platform/administration/alerts/) section
to learn how to manage your alerts.
