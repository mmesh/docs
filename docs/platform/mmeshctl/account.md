---
title: "Accont"
description: "Show account, subscription or billing details."
tags:
  - cli
  - account
  - subscription
  - billing
---

# Account

## Actions

The **account** command shows account, subscription or billing details. Additionaly it can cancel a subscription.

## Usage

  mmeshctl account [command]

## Available Commands

- `show`         Show account details
- `subscription show` Show subscription details 
- `subscription cancel` Cancel service subscription
- `billing portal` Opens a session to the billing portal in your browser.

## Example

```bash
mmeshctl account show
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

                                                       ───── Account Details ≡
═══════════════════
Account Information
═══════════════════

Account ID    	<Account_ID_removed> 	
Name          	Demo account.                        	
Description   	Demo account.                        	
Company       	Mmesh                                	
Location ID   	eu-west                              	
Federation ID 	eu-west-01                           	
Creation Date 	2023-06-10 13:45:44 +0200 CEST       	
Account Status	[confirmed] [enabled]                	

Account Stats
─────────────

NETWORK     	  	IAM            	 	AUTOMATION	 	
-------     	  	---            	 	----------	 	
Tenants     	2 	Users          	2	Projects  	1	
Networks    	2 	Security Groups	2	Workflows 	3	
Subnets     	5 	Roles          	2	
Nodes       	11	ACLs           	2	
Endpoints   	12	
Tier-1 Nodes	5 	

Last Updated	2024-02-28 13:38:18 +0100 CET	

# mmeshctl account billing portal
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs


🢂 Opening Billing Portal in your browser...

```
