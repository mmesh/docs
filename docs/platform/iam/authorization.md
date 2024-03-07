---
title: "Authorization"
description: "mmesh implements an authorization system based on an extended RBAC model with three levels of control for the individual users."
tags:
  - users
  - security
  - auth
  - rbac
---

# Authorization

mmesh implements an authorization system based on an extended RBAC model with two levels of control for the individual users:

- Security Groups
- Access Control Lists (ACLs)

Role-Based Access Control (RBAC) is a method to define authorization levels to regulate access to resources (tenants, networks, subnets, nodes) based on the roles and groups that you assign to the individual users within your mmesh account.

## Security Groups

A `security group` controls the access to your mmesh tenants.

A security group is defined with the list of tenants that the user will have access.

A security group can be assigned to one or multiple users.

One user can have assigned one or multiple security groups.

There is no limit in the number of security groups you can create.

By default, when you create a mmesh account, you will find a security group called `all-tenants` assigned to the mmesh admin. This security group grants access to all tenants configured in your mmesh topology.

In order to configure the access to your tenants, you will need to:

1. Create the tenant/s.
2. Create or configure your security groups with the tenants.
3. Assign the security groups to your users.

### Administration

You can manage the security groups using the mmesh webUI or the mmesh CLI.

Browse the [Security Groups Administration](security-groups.md) section to learn how to manage the security groups.

## Access Control Lists (ACLs)

An `ACL` controls the access to your resources based in tags.

An ACL is defined with the set of resources (tags) that the user will have access.

An ACL can be assigned to one or multiple users.

One user can have assigned one or multiple ACLs.

There is no limit in the number of ACLs you can create.

By default, when you create a mmesh account, you will find an ACL called `all-tags` assigned to the mmesh admin. This ACL grants access to all your resources in your mmesh topology.

To control the access to your resoruces, you will need to:

1. Add a new resource and assign it a tag.
2. Create or configure your ACLs with the set of tags.
3. Assign the ACL to your users.

!!! Information

    The tags don't need to be created manually, they are discovered automatically and will be available once there is a resource that has them assigned.

### Administration

You can manage the ACLs using the mmesh webUI or the mmesh CLI.

Browse the [ACLs Administration](acls.md) section to learn how to manage the ACLs.
