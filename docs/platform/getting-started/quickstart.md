---
title: "Quick Start"
description: "Follow this guide to build your own multi-cloud virtual private topology and integrate your on-prem and multi-cloud environments in minutes."
tags:
  - getting started
  - installation
  - account
  - configuration
  - cli
  - nodes
---

# Quick Start

mmesh is an innovative network, monitoring and automation platform that lets you easily create your virtual topology to integrate your on-prem and multi-cloud environments in minutes.

Get started with the following steps:

## 1. Create your account

Follow this [instructions](../administration/account.md#create-a-new-account) to create your account.

## 2. Add your nodes

A first node will be automatically created as part of the account creation process. Once a node is created on the webUI, follow the provided instructions to install mmesh on it.

To create more nodes, select the subnet where you want to add them and click on the `Add Node` button.

For additional details on how to install mmesh on your nodes, check these detailed how-tos:

- [Node install on Linux](node-linux-setup.md)


## 3. Install and configure mmeshctl

To work using mmesh command line interface (CLI), follow these instructions.

1. Download and install the `mmeshctl` binary. Linux, macOS and Windows binary downloads are available from the [Releases](https://github.com/mmesh/m-cli/releases) page at the mmesh-cli [GitHub repository](https://github.com/mmesh/m-cli).
2. Execute `mmeshctl setup` to generate your `mmeshctl.yml`. This config file will be located by default in the `$HOME/.mmesh` directory.

Find more details in the [mmeshctl installation guide](../installation/cli.md).

## Next Steps

By completing this guide you have your mmesh up and running and are ready to explore all the features of mmesh:

- Integrate your Kubernetes Services and Pods with `mmeshctl k8s`.
- Manage your traffic security rules with `mmeshctl policy`.
- Manage your automation workflows with `mmeshctl ops workflow`.
- Check the alerts of your nodes with `mmeshctl alert list`.
- Connect to your nodes with `mmeshctl exec`.
