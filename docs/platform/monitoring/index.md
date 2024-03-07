---
title: "Monitoring"
description: "mmesh has been designed to be simple, enjoyable and easy-to-use, and monitors the nodes out-of-the-box, with no configuration required."
tags:
  - metrics
---

# Monitoring

mmesh has been designed to be simple, enjoyable and easy-to-use, and monitors the nodes out-of-the-box, with no configuration required.

mmesh is not intended to be a full-fledged monitoring or observability suite as Prometheus or others, but it has some interesting monitoring capabilities that, in many cases, could meet your requirements.

mmesh includes performance & capacity monitoring features and an alerting system.

### [Performance & Capacity Analytics](/docs/platform/monitoring/analytics/)

Learn how mmesh monitors your nodes and provides some useful analytics features, and check some examples.

# Alerts

mmesh monitors the nodes and generates alerts when it detects the following events:

- Node offline (disconnected from mmesh)
- Node rebooted
- CPU Usage reaches 90%
- Memory Usage reaches 90%
- Disk Usage reaches 90%

## Administration

You can manage your alerts using the mmesh webUI or `mmeshctl`.

Browse the [Alerts Administration](/docs/platform/administration/alerts/) section
to learn how to manage your alerts.


## [Alerts Integration](/docs/platform/monitoring/alerts/)

mmesh implements an alert system that supports integrations with with PagerDuty and Slack.
