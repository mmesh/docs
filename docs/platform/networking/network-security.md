---
tags:
  - networking
  - security
---

# Network Security

The platform supports different features out-of-the-box to enhance your infrastructure security just by adding your nodes to your mmesh.

mmesh automatically enforces most of these features without any configuration required. Other are optional, but recommended, and require a minimum configuration.

## Security Policies

Every mmesh subnet has a security policy attached that is automatically enforced when the subnet is created.

This security policy acts as a distributed firewall protecting every node connected to the subnet.

A security policy includes a default policy (ACCEPT or DROP) and a group of network filters that act as firewall rules.

When you create a new subnet, you will be asked to specify the default policy for the attached security policy.

In case no network filters were configured on a subnet or if they don't match an incoming IP packet, the default policy will act as a last resort rule.

Both IPv4 and IPv6 address families are supported in the network filters.

You can manage and configure your security policies in three different ways:

- Using the mmeshctl CLI.
- Using the mmesh web interface.
- Via GitOps, if you enable the GitHub integration.

## End-to-End Encryption

mmesh has an always-on crypto engine based on TLS 1.3+ that automatically enforces end-to-end encryption for all network traffic and user interactions.

Low-level connectivity layer is built on the excellent libp2p from IPFS project, ensuring nobody can eavesdrop the traffic between your nodes once they are connected to your mmesh.
