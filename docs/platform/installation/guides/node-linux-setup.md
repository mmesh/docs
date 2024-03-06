---
title: "Node install on Linux"
description: "Guide to install mmesh-node on Linux, with details for Azure, AWS and Google."
tags:
  - nodes
  - linux
  - installation
---
# Node install on Linux

Follow this step by step guide to install **mmesh-node** on Linux.

The mmesh-node is an open-source agent that runs on the machines you want to connect to your mmesh virtual network.

## Node creation

First login into [mmesh](https://mmesh.io/). You'll be shown with your dashboard. In the middle of your page or on the right on your subnet bar, click on the `Add node` button.

![mmesh Dashboard.](../assets/images/Dashboard-M.png)

Name your **node** (name must consist of lower case alphanumeric characters or '-', start with an alphabetic character, and end with an alphanumeric character e.g. 'my-node',  or 'node-123'), provide a description for it, and press `Add New Node`.

![mmesh node form.](../assets/images/NewNodeForm.png)

Once you click on `Add New Node` a setup page with commands to install mmesh-node on Linux, Docker, MacOS, or Windows will be shown.

![mmesh node setup.](../assets/images/NodeSetup.png)

## Node installation

Copy and execute the previous command on your Linux server. Provide your password to get access to root by `sudo` if required. Once complete, you will get a message like this:

```bash
mmesh@mmesh-gcp-gw1:~$ wget -O /tmp/mmesh-node-install.sh https://raw.githubusercontent.com/mmesh/m-node/master/scripts/install.sh && sudo sh /tmp/mmesh-node-install.sh --token "eyJuZ**************REMOVED******************zo0NDMifQ=="
--2023-10-19 09:19:26--  https://raw.githubusercontent.com/mmesh/m-node/master/scripts/install.sh
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 185.199.110.133, 185.199.108.133, 185.199.109.133, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.110.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 14399 (14K) [text/plain]
Saving to: ‘/tmp/mmesh-node-install.sh’

/tmp/mmesh-node-install.sh                    100%[=================================================================================================>]  14.06K  --.-KB/s    in 0s      

2023-10-19 09:19:27 (47.1 MB/s) - ‘/tmp/mmesh-node-install.sh’ saved [14399/14399]

Detected Linux distribution: debian
Installing mmesh-node..
Stopping mmesh-node service...
Removed /etc/systemd/system/multi-user.target.wants/mmesh-node.service.
Detected Linux apt-based distribution, checking deps..
Checking dependencies...
deb [trusted=yes] https://repo.mmesh.io/apt/ /
Hit:1 https://deb.debian.org/debian bullseye InRelease
Hit:2 https://deb.debian.org/debian-security bullseye-security InRelease
Hit:3 https://deb.debian.org/debian bullseye-updates InRelease
Hit:4 https://deb.debian.org/debian bullseye-backports InRelease
Hit:5 https://packages.cloud.google.com/apt google-compute-engine-bullseye-stable InRelease
Hit:6 https://packages.cloud.google.com/apt cloud-sdk-bullseye InRelease
Ign:7 https://repo.mmesh.io/apt  InRelease                             
Ign:8 https://repo.mmesh.io/apt  Release
Ign:9 https://repo.mmesh.io/apt  Packages
Ign:10 https://repo.mmesh.io/apt  Translation-en
Get:9 https://repo.mmesh.io/apt  Packages
Ign:10 https://repo.mmesh.io/apt  Translation-en
Ign:10 https://repo.mmesh.io/apt  Translation-en
Ign:10 https://repo.mmesh.io/apt  Translation-en
Ign:10 https://repo.mmesh.io/apt  Translation-en
Ign:10 https://repo.mmesh.io/apt  Translation-en
Ign:10 https://repo.mmesh.io/apt  Translation-en
Fetched 2648 B in 1s (1890 B/s)
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
mmesh-node is already the newest version (0.6.0).
0 upgraded, 0 newly installed, 0 to remove and 46 not upgraded.
Setting mmesh-node configuration...
Saving existing mmesh-node configuration...
Creating mmesh-node configuration...
Starting mmesh-node setup on Linux...
Enabling systemd mmesh-node service...
Created symlink /etc/systemd/system/multi-user.target.wants/mmesh-node.service → /etc/systemd/system/mmesh-node.service.
Done.
mmesh@mmesh-gcp-gw1:~$ 
```

A new network interface with an IP on your **mmesh** subnet has been created on your server. You can check its IP and route using the `ip` command:

```bash
mmesh@mmesh-gcp-gw1:~$ ip a | grep mmesh
4: mmesh0: <POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP> mtu 65535 qdisc mq state UNKNOWN group default qlen 500
    inet 10.254.0.223/32 scope global mmesh0
mmesh@mmesh-gcp-gw1:~$ ip route | grep mmesh
10.254.0.0/16 dev mmesh0 
mmesh@mmesh-gcp-gw1:~$ 
```

## Validation

Check for your node and its statistics on your **Dashboard**:

![Dashboard.](../assets/images/Dashboard-1Node.png)

Additionally, you can get more details by selecting the **Topology** tab on your left menu.

![Topology.](../assets/images/Topology-1Node.png)

Repeat this process for any additional Linux node that you want to add to your network.

## How to automate this process on the main cloud providers

Let's check how to automate the **mmesh-node** installation on Linux VMs on the main cloud providers:

### AWS

When creating a VM in **AWS**, select `Advanced details` and scroll until the bottom to `User data`. Add the code:

```bash
#!/bin/bash
```

 Plus the command provided by **mmesh** on the node installation tab. Example:

![AWS User Data.](../assets/images/AWS-UserData.png)

To review the output of this script, look for its output on `/var/log/cloud-init-output.log`.

 More information [here](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html?icmpid=docs_ec2_console#user-data-shell-scripts).

### Azure

When creating a VM in **Azure**, select `Advanced`. On the `User data` section, add the next code:

```bash
 #! /bin/bash
```

 Plus the command provided by **mmesh** on the node installation tab. Example:

![Azure Custom Data.](../assets/images/Azure-CustomData.png)

To review the output of this script, look for its output on `/var/log/cloud-init-output.log`.

More information [here](https://learn.microsoft.com/en-us/azure/virtual-machines/custom-data)

### Google

When creating a VM in **Google**, select `Advanced Options` and then `Management`. On the `Automation` section, add the next code:

```bash
 #! /bin/bash
```

 Plus the command provided by **mmesh** on the node installation tab. Example:

 ![GCP Startup Script.](../assets/images/GCP-StartupScript.png)

To check the output of this script, execute the following command on your VM:

```bash
sudo journalctl -u google-startup-scripts.service
```

 More information [here](https://cloud.google.com/compute/docs/instances/startup-scripts/linux?authuser=2#console).
