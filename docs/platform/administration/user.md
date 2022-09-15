---
title: "User Settings"
description: "Learn how to manage your user settings, credentials and different authentication options using mmeshctl or the mmesh webUI."
---

# User Settings

You can edit your user settings, credentials and different authentication options.

> See [Authentication](/docs/platform/iam/authentication/) section to find more information about mmesh authentication options.

## Operations

You can edit your user settings and credentials using `mmeshctl` or the mmesh webUI.

### WebUI: User Settings

1. In the navigation menu on the left, click `User` to browse your settings and credentials.

### CLI: User Settings

#### Show User Settings

Show your user settings.

```shell
mmeshctl user show
```

#### Set User Email

Update your user email.

```shell
mmeshctl user set-email
```

#### Set User Password

Update your password.

```shell
mmeshctl user set-password
```

#### Set User SSH Keys

Manage your SSH keys.

```shell
mmeshctl user set-ssh-keys
```

#### Set 2-Factor Authentication

Enable or disable 2-Factor Authentication.

```shell
mmeshctl user set-2fa
```

#### Request a Password-Reset

Request a password reset.

```shell
mmeshctl user password-reset
```
