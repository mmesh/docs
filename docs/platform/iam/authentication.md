---
title: "Authentication"
description: "Learn about the different authentication methods supported by mmesh."
tags:
  - users
  - security
  - auth
---

# Authentication

### Passwordless

mmesh use a **Passwordless** method of authentication that allows users to access webUI or `mmeshctl` without the need for traditional passwords. This method allows us to provide a more user-friendly and secure way of access.

**Passwordless authentication** is to enhance security by reducing the reliance on easily compromised passwords, which are susceptible to various attacks like phishing, brute force, and credential stuffing. 

mmesh authentication is based in **One-time passwords** (OTPs). The users receive a temporary code on their registered device through email, which can be used for a single login session. This code has an expiration of 10 minutes.

### User Access Token

**User Access Token** is an alternative to using passwordless authentication which provide secure and limited access to mmesh platfom API on behalf of a user.

**User Access Token** was created to provide flexibility and reduce friction in your authentication processes, without needing to sign in with a user.

Common use cases include:

  - Automating tasks or background processes.

  - Integrating your tool or external service with mmesh platform.


You can regenerate your **User Access Token** whenever you need it from webUI in `User Setting` section. 