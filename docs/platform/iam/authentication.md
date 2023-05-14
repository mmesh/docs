---
title: "[IAM] Authentication"
description: "Learn about the different authentication methods supported by mmesh."
tags:
  - users
  - security
---

# Authentication

You can interact with your mmesh using the webUI or `mmeshctl`. Both apps support user/password authentication.

Authentication by RSA key is also supported (and recommended) by `mmeshctl`.

## User Credentials

You can edit your user credentials and SSH keys using the mmesh webUI or the mmesh CLI.

Browse the [User Settings](/docs/platform/administration/user/) section to learn how to manage your mmesh credentials.

## RSA Authentication

The mmesh CLI supports authentication by RSA key.

This is the recommended method of authentication when using the CLI.

It works the same way as SSH does when you enable SSH authentication by public key.

This method can be more convenient, since once enabled, you won't need to enter your credentials manually.

You will need to generate a RSA Key using `ssh-keygen` and put the resulting files in the `${HOME}/.mmesh` directory.

```shell
ssh-keygen
```

Then you need to add the content of the public key (`id_rsa.pub`) to the list of your SSH keys using `mmeshctl user set-ssh-keys` or the mmesh webUI.

```shell
mmeshctl user set-ssh-keys
```

## 2-Factor Authentication

[TBD]
