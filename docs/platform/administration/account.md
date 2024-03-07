---
title: "Account"
description: "Learn how to manage your mmesh account and configure third-party integrations."
tags:
  - admin
  - account
  - configuration
  - integrations
  - pagerduty
  - slack
---

# Account Administration

## Manage Accounts

### Create a new account

1. Please navigate to our [Sign up](https://mmesh.io/signin) page.

2. You can sign up using your **Google**, **Microsoft**, or any other **email account**, and pick the option that best fits you. 

  ![Login Page](../assets/images/account/login-page.png)

3. After a sucessfull login you will be redirected to **Account Setup** screen:

    Please, provide the required information in the following sections:

    - **Billing Information**.
    - **Account Configuration**:
        - For `Control Plane Location` field, we suggest picking up a zone from the list that is geographically near to your network devices. 
        - For `Connectivity Zone` field, the same suggestion made for Control Plane Location apply. 
    - **Admin credentials**.
    - **Initial Topology**:
        - An initial or default network and subnet will be also created, so just provide the CIDR for your default network and define the first subnet of your election or just accept the defaults provided.

    ![Account Setup](../assets/images/account/account-setup.png)

4. Finally, click on the `START` button and you will be logged into the **mmesh** dashboard.

!!! success

    **Your account setup is complete!** Enjoy your `15-days free trial` period with access to our business-level plan. At the end of this period, you will be notified and set into our **free forever plan**.

## Integrations

### GitOps

#### GitHub

The GitHub integration allows you to implement GitOps flows and automate the configuration of your mmesh infrastructure.

You will be able to keep your automation workflows and network policies YAML files well organized in your private GitHub repositories and automatically configure your mmesh policies and workflows, or trigger custom actions on your nodes when git-push events are detected.

### Alerts

#### PagerDuty

The PagerDuty integration allows forwarding all the alerts of your mmesh to your PagerDuty account.

### Notifications

#### Slack

The Slack integration allows receiving general notifications, automation reports and alerts on the channels of your choice in your Slack organization.

mmesh will use **two different channels**: one for **general notifications and automation reports** and the other for **alerts and high-priority notifications**.

##### Configuration

1. [Create the Incoming Webhooks](https://api.slack.com/messaging/webhooks) for the two channels in your Slack organization.

2. Configure the mmesh integration:

     - Using the webUI, in `Account > Settings > Integrations > Slack`.
     - Using the mmeshctl CLI, with `mmeshctl account settings`.

