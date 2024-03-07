---
title: "Help Command"
description: "Show mmeshctl help."
tags:
  - cli
  - help
---

# Help

## Actions

The **help** command shows all available commands and detailed information on their options and usage.

It can be used alone for a list of available commands, or to show detailed help for any command.

## Usage

  mmeshctl help
  
  mmeshctl [command] help

## Available Commands

None.

## Example

```bash
# mmeshctl help
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

mmeshctl is a CLI to control the mmesh multi-cloud networking platform.

Find support and more information:

  Project Website:     https://mmesh.io
  Documentation:       https://mmesh.io/docs
  Join us on Discord:  https://mmesh.io/discord

Usage:
  mmeshctl [command]

Available Commands:
  account     Account administration
  auth        Authentication commands
  alert       Alert system
  tenant      Tenants administration
  network     Networks administration
  subnet      Subnets administration
  node        Network node operations
  vs          Virtual Servers (lb/ha services)
  policy      Security policies administration
  k8s         Connect kubernetes clusters to your mmesh
  ops         Automation and GitOps: projects / workflows / logs
  version     Update client and show version information
  completion  Generate completion script
  help        Help about any command

Flags:
      --config string   configuration file (default: $HOME/.mmesh/mmeshctl.yml)
  -h, --help            help for mmeshctl

Use "mmeshctl [command] --help" for more information about a command.

# mmeshctl version help
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

Update client and show version information.

Usage:
  mmeshctl version [command]

Available Commands:
  show        Show mmeshctl version information
  update      Update mmeshctl to the latest version

Flags:
  -h, --help   help for version

Global Flags:
      --config string   configuration file (default: $HOME/.mmesh/mmeshctl.yml)

Use "mmeshctl version [command] --help" for more information about a command.

```
