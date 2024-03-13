---
title: "Monitoring"
description: "mmesh monitors the nodes out-of-the-box, providing cpu, memory, disk and network usage statistics. We also provide alerts and integrate with PagerDuty and Slack."
tags:
  - metrics
  - integrations
  - pagerduty
  - slack
---

# Monitoring

mmesh has been designed to be simple, enjoyable and easy-to-use, and monitors the nodes out-of-the-box, with no configuration required.

mmesh is not intended to be a full-fledged monitoring or observability suite as Prometheus or others, but it has some interesting monitoring capabilities that, in many cases, could meet your requirements.

mmesh monitors your nodes, providing visual graphs for:

- Network: bandwith usage (on the mmesh interface)
- CPU: core utilization %
- Memory: RAM Utilization %
- Disk: main disk partition utilization %

These can be accessed by selecting each node on the `Metrics` tab.

# Alerts

Based on the previous monitors, mmesh generates alerts when it detects the following events:

- Node offline (disconnected from mmesh)
- Node rebooted
- CPU Usage reaches 90%
- Memory Usage reaches 90%
- Disk Usage reaches 90%

## Administration

You can manage your alerts using the mmesh webUI on the `Alerts` tab, or using `mmeshctl`.

Browse the [Alerts Administration](adm-alerts.md) section to learn how to manage your alerts.


## Alerts Integration

The mmesh alert system supports integrations with with PagerDuty and Slack.

### PagerDuty

The PagerDuty integration allows you to forward all the alerts of your mmesh to your PagerDuty account.

mmesh highly recommends the PagerDuty service and configuring this integration to take full advantage of the mmesh alert system.

[PagerDuty Integration Configuration >](adm-settings.md#pagerduty)


### Slack

You can configure a Slack webhooks for mmesh to notify you when an alert has been triggered.

[Slack Integration Configuration >](adm-settings.md#slack)
