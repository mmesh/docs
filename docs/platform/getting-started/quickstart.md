# Quick Start

mmesh is an innovative network, automation, monitoring and management platform that lets you easily create your own virtual topology to integrate your on-prem and multi-cloud environments in minutes.

Get started with the following steps:

## 1. Create your account

- [Sign up here](https://mmesh.io/signup) or
- if you already have the mmesh CLI installed, use the command `mmeshctl account create`.

## 2. Install and configure mmesh CLI

1. Download and install the `mmeshctl` binary. Linux, macOS and Windows binary downloads are available from the [Releases](https://github.com/mmesh/m-cli/releases) page at the mmesh-cli [GitHub repository](https://github.com/mmesh/m-cli).
2. Execute `mmeshctl setup` to generate your `mmeshctl.yml`. This config file will be located by default at the `$HOME/.mmesh` directory.

Find more details in the [mmesh-cli installation guide](/docs/platform/installation/cli/).

## 3. Create your first network

The default tenant is created for you automatically when you sign up.

Use the following command to create your network:

```shell
mmeshctl network create
```

You will need to enter the network ID (example: `dev-network`), the network CIDR /16 IPv4 prefix (example: `10.188.0.0/16`) and a short description (example: `dev network environment`).

At this point you also configure whether the subnets belonging to this network will be isolated from each other or routed, although you can also change this setting later with `mmeshctl network update`.

## 4. Create your first subnet

Use the following command to create your subnet:

```shell
mmeshctl subnet create
```

You will need to enter the subnet CIDR /24 IPv4 prefix (must be a /24 included in the network prefix, so for example: `10.188.1.0/24`), a short description (example: `my first subnet`) and a secret to authenticate the nodes connected (write it down since it will not be shown again).

At this point you also configure the default Security Policy (`ACCEPT` or `DROP`) for the traffic entering this subnet, although you can also change this setting later with `mmeshctl subnet update`.

## 5. Add your nodes

> For Linux nodes only. See the mmesh-node [Installation Guide](/docs/platform/installation/nodes/) for more details and other platforms.

The easiest way to add nodes to your mmesh is by generating a magic link with `mmeshctl`:

```shell
mmeshctl node add
```

You will be able to use the magic link to install the `mmesh-node` agent in seconds with no additional configuration required.

Once installed you can review the configuration at `/etc/mmesh/mmesh-node.yml`.

## Next Steps

By completing this guide you have your mmesh up and running and are ready to explore all the features of mmesh:

- Integrate your Kubernetes Services and Pods with `mmeshctl k8s`.
- Manage your traffic security rules with `mmeshctl policy`.
- Manage your automation workflows with `mmeshctl ops workflow`.
- Check the alerts of your nodes with `mmeshctl alert list`.
- Manage your support tickets with `mmeshctl support ticket`.
- Connect to your nodes with `mmeshctl exec`.
