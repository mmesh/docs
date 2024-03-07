---
title: "Version Command"
description: "Check or update mmeshctl version."
tags:
  - cli
  - version
---

# Version

## Actions

- **show the mmmesctl version**: use this action to check the installed version of mmeshctl.

- **update mmeshctl to the latest version**: use this action to update mmeshctl to the latest version.

## Usage

  mmeshctl version [command]

## Available Commands

- `show`        Show mmeshctl version information

- `update`      Update mmeshctl to the latest version

## Example

```bash
# mmeshctl version update
mmeshctl v0.10.2-20240220150403+53b631f--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

Software Update
---------------
New version available, updating...
Binary updated to latest version :-)

# mmeshctl version show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

Client Info: mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0

```
