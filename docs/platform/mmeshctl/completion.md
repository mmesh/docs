---
title: "Completion"
description: "Generate completion scripts for bash, zsh, fish or powershell."
tags:
  - cli
  - completion
---

# Completion


## Actions

Generate completion scripts for bash, zsh, fish or powershell.

## Usage

  mmeshctl completion [command]

## Available Commands

- *bash*        Generate the autocompletion script for bash

- *zsh*         Generate the autocompletion script for zsh

- *fish*        Generate the autocompletion script for fish

- *powershell*  Generate the autocompletion script for powershell

## Example

```bash
# mmeshctl completion zsh
#compdef mmeshctl
compdef _mmeshctl mmeshctl

# zsh completion for mmeshctl                             -*- shell-script -*-

__mmeshctl_debug()
{
    local file="$BASH_COMP_DEBUG_FILE"
    if [[ -n ${file} ]]; then
        echo "$*" >> "${file}"
    fi
}

_mmeshctl()
{
    local shellCompDirectiveError=1
    local shellCompDirectiveNoSpace=2
    local shellCompDirectiveNoFileComp=4
    local shellCompDirectiveFilterFileExt=8

....
<Rest of content removed for brevity.>
```
