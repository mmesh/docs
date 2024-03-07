---
title: "Account Administration"
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

1. To sign up you just need an **email account**. Please navigate to our sign-up page at: [https://mmesh.io/signin](https://mmesh.io/signin) and insert your email address.

    ![Sign up.](../assets/images/account/mmesh-signup.png)

2. Push the `Continue with Email` button and you will get a confirmation message:

    ![Mail sent confirmation.](../assets/images/account/mail-sent-confirmation.png)

3. Press the `Continue` button and open your email to get your one-time code similar to this:

    ![Sample code email.](../assets/images/account/stytch-code.png)

!!! Warning

    If you can not find it in your inbox, check either the Social tab or the spam folder, just in case.
    
4. Insert your code and press `Sign In` to continue with the sign in process:

    ![Code verification.](../assets/images/account/code-verification.png)

5. Then you will automatically be redirected back into **mmesh** and can continue with your account setup process.

    ![Account Setup.](../assets/images/account/account-setup.png)

  Please, provide the required information in the following sections:

  - **Billing Information**
  - **Account Configuration**
    - For `Control Plane Location` field, we suggest picking up a zone from the list that is geographically near to your network devices.
    - For `Connectivity Zone` field, the same suggestion made for `Control Plane Location` apply.
  - **Admin credentials**
  - **Initial Topology**
    - An initial or default network and subnet will be also created, so just provide the CIDR for your `default network` and define the first `subnet` of your election or just accept the defaults provided.

6. Finally, push the `start` button and you will be logged into the **mmesh** dashboard.

    ![Initial Dashboard.](../assets/images/account/initial-dashboard.png)

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

To configure it, on the **Account Setup** screen, select `Settings`and `Integrations`. Open the `PagerDuty` section.

![PagerDuty Setup](../assets/images/account/pagerduty-setup.png)

Add your PagerDuty integration key, enable it, and press `Save`. Your PagerDuty integration is complete.


### Notifications

#### Slack

The Slack integration allows receiving general notifications, automation reports and alerts on the channels of your choice in your Slack organization.

mmesh will use **two different channels**: one for **general notifications and automation reports** and the other for **alerts and high-priority notifications**.

##### Configuration

First, create the [Incoming Webhooks](https://api.slack.com/messaging/webhooks) for the two channels in your Slack organization.

Next, using the webUI, select `Account > Settings > Integrations`. Open the `Slack`section:

![Slack Setup](../assets/images/account/slack-setup.png)

Add your Slack Alerts and Workflows webhooks, enable it, and press `Save`. Your Slack integration is complete.
