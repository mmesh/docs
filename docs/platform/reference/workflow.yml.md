---
title: Workflow Configuration Reference
description: Learn how to configure a mmesh workflow using a declarative YAML file. This is the complete reference of the configuration options supported.
---

# Workflow Configuration Reference

You can configure a mmesh workflow using a declarative YAML file. This is the complete reference of the configuration options supported.

```yaml
# mmesh workflow
apiVersion: v1
kind: Workflow

workflowID: "<workflowID>"

name: "<workflow-name>"
description: "<workflow-description>"

enabled: true

project: "<projectID>"

owner:
  email: "<email-address>"

reviewers:
  - "<email-address>"
approvers:
  - "<email-address>"

triggers:
  webhook: # /api/v1/realm/{accountToken}/webhooks/workflow/{wfToken}
    enabled: true
  gitEvents:
    events:
      - push
  schedule:
    enabled: true
    dateTime:
      year: "2021"
      month: "09"
      day: "11"
      hour: "6"
      minute: "05"
    crontab: "0 0 * * *" # min hour dayOfMonth month dayOfWeek
  events: # mmesh events
    - name: "mmesh-event-1"
      description: "mmesh-event-1"
      type: "nodeActivity" # nodeActivity | userActivity
      parameters:
        srcNodeID: "<nodeID>"
        userID: "<email-address>"

jobs:
  - name: "job-1"
    description: "job-1"
    onSuccess:
      - "test-workflow-1"
    onFailure:
      - "test-workflow-2"
    tasks:
      - name: "healthcheck"
        description: "healthcheck"
        actions:
          - name: "uptime"
            type: "command"
            command:
              cmd: "uptime"
          - name: "top"
            type: "command"
            command:
              cmd: "top"
              args:
                - "-b"
                - "-n"
                - "1"
      - name: "dnssec-update"
        description: "DNSSEC zones signing update"
        actions:
          - name: "update-dnssec"
            type: "command"
            command:
              cmd: "/etc/bind/update-dnssec.sh"

notify:
  email:
    recipients:
      - email: "<email-address>"
  slack:
    recipients:
      - email: "<email-address>"

targets:
  - tenantID: "<tenantID>"
    netID: "<networkID>"
    vrfID: "subnet-nnn"
    nodeID: "<nodeID>"
```
