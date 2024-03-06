---
title: "Users"
description: "mmesh has three types of users, the account administrator, admin users and proxy users."
tags:
  - users
  - security
---

# Users

mmesh has three types of users:

- **Account administrator**, who is considered the account owner. This user has full access to the account (via webUI or `mmeshctl`) and will be associated with the billing system. There can only be one per account.

- **Admin Users** are adminitrators users of the tenant. These users haver full access to the tenant/s (via webUI or `mmeshctl`) by the Security Groups assigned. Each new such user added has an additional fee.

- **Proxy Users** are only allowed to access resources assigned through ACLs and that are exposed through Virtual Services. These users are not allowed to access the webUI or use `mmeshctl` to interact with the API. Each new such user added has an additional fee.


### Administration

You can manage the users using the mmesh webUI or `mmeshctl`.

Browse the [IAM: Users Administration](/docs/platform/administration/iam-users/) section to learn how to manage the users.
