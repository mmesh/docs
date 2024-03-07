---
title: "Kubernetes Command"
description: "Manage Kubernetes services, workloads and mmesh gateways for Kubernetes clusters."
tags:
  - cli
  - kubernetes
---

# Kubernetes


## Actions

Manage **kubernetes** workloads, services and mmesh gateways for Kubernetes clusters.

## Usage

  mmeshctl k8s [command]

## Available Commands

- `svc`         Connect kubernetes services to your mmesh

    - `list`        List kubernetes services connected via mmesh ingress gateway

    - `connect`     Connect kubernetes services via mmesh ingress gateway

    - `disconnect`  Disconnect kubernetes services from mmesh ingress gateway

- `workload`    Connect kubernetes workloads to your mmesh

    - `list`        List kubernetes workloads connected via mmesh sidecar

    - `connect`     Add mmesh sidecar to your kubernetes workloads

    - `disconnect`  Remove mmesh sidecar from your kubernetes workloads

- `delete-gw`   Remove mmesh gateway from your kubernetes cluster

## Example

```bash
# mmeshctl k8s workload list
mmeshctl v0.10.3-20240221030001+cdd3c9c--go1.22.0
  ■   ▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄ ▄▄▄▄ ▄  ▄ │
■  ██    █ ▄ █ █ ▄ █ █■   ▀  ▄ █▄▄█ │ Main Website:  https://mmesh.io
  ▀   ■  ▀ ▀ ▀ ▀ ▀ ▀ ▀▀▀▀ ▀▀▀▀ ▀  ▀ │ Documentation: https://mmesh.io/docs

                                                 ───── Kubernetes: Resources ≡
═════════════
Resource List
═════════════

KUBERNETES RESOURCE                                               
---------------------------------------------------------------------
█ [mmesh] mgw-subnet-172-16-15-1708418135                        	
█ Tenant: demo | Network: net-172-16 | Subnet: subnet-172-16-15  	
---------------------------------------------------------------------
█ [default] nginx-depl                                           	
█ Tenant: demo | Network: net-172-16 | Subnet: subnet-172-16-15  	
---------------------------------------------------------------------
█ [kube-system] coredns                                          	
█ Tenant: - | Network: - | Subnet: -                             	
---------------------------------------------------------------------
█ [kube-system] kube-proxy                                       	
█ Tenant: - | Network: - | Subnet: -                             	
---------------------------------------------------------------------

```
