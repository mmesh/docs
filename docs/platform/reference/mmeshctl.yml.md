---
title: Command Line Tool (mmeshctl) Configuration Reference
description: The file mmeshctl.yml is used to configure mmeshctl. This is the complete reference of the configuration options supported.
---

# Command Line Tool Configuration Reference

If you run `mmeshctl` for the first time or the file `mmeshctl.yml` is not found under your `$HOME/.mmesh` directory, you will be asked to enter your mmesh accountID and credentials, and a new configuration file will be generated and saved in `$HOME/.mmesh`.

The generated file does not include the `agent` section (see below) where you can specify the extended security credentials to get access to your nodes. Although they are recommended, this section is optional.

> See [Nodes Remote Management Features](/docs/platform/networking/nodes/#remote-management-features) for more information about mmesh remote management and extended security credentials.

## mmeshctl.yml

This is the complete reference of the configuration options supported.

```yaml
# mmeshctl configuration

controller:
  authServer: "https://<federationID>.mmesh.network"
  endpoint: "<federationID>.mmesh.network:443"

account:
  id: "<your-mmesh-accountID>"

user:
  email: "<your-email>"

agent:
  management:
    auth:
      psk: "<your-secret-preshared-key>"
      securityToken: "<your-secret-security-token>"
```
