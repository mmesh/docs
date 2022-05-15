---
tags:
  - networking
---

# Service Discovery

mmesh has a service discovery system which publish every node endpoint on an internal DNS subsystem which is enabled in every node.

## DNS Integration

The mmesh internal DNS uses the `.mmesh.local` suffix.

You can query this DNS on the port `UDP/5353` (by default) of every mmesh node.

> See [Node Configuration Reference](/platform/reference/mmesh-node.yml/) section for more information about the `mmesh-node.yml` file.

You can easily integrate the `.mmesh.local` domain into your DNS infrastructure by configuring the `mmesh.local` domain as a _forward_ zone.

### Configuration

Example for the [bind 9](https://www.isc.org/bind/) name server:

```bind
zone "mmesh.local" {
  type forward;
  forward only;
  forwarders { 10.99.0.11 port 5353; 10.99.0.12 port 5353; };
};

```
