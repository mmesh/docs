---
title: "Authorization"
description: "Login or logout session for mmeshctl."
tags:
  - cli
  - authorization
---

# Authorization

## Actions

The **authorization** command opens a session for mmeshctl or removes it, by using 2 commands:

- **login**: opens a session.

- **logout**: closes the local session.

## Usage

  mmeshctl auth [command]

## Available Commands

- *login*       Log in

- *logout*      Log out

## Example

```bash
# mmeshctl auth login
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

Authentication Required

» Email: <<email-removed>>

  A one-time code to log in to your account has been sent to your email.
  Your code expires in 10 minutes.
  Please, check your inbox (and spam/junk folders, just in case).

» Code: ******

Authenticated


# mmeshctl auth logout
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

Logged out

```
