---
title: [IAM] Authorization
description: mmesh implements an authorization system based on an extended RBAC model with three levels of control for the individual users.
---

# Authorization

mmesh implements an authorization system based on an extended RBAC model with three levels of control for the individual users:

- Security Groups
- User Roles
- Access Control Lists (ACLs)

Role-Based Access Control (RBAC) is a method to define authorization levels to regulate access to functions (write, read...) and resources (tenants, networks, subnets, nodes) based on the roles and groups you assign to the individual users within your mmesh account.

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

Browse the [IAM: Security Groups Administration](/docs/platform/administration/iam-security-groups/) section to learn how to manage the security groups.

## User Roles

A `role` controls the user access to the different mmesh subsystems, resources and commands.

A role is defined with a set of permissions. These permissions regulate what the user can do or not within your mmesh account.

A role can be assigned to one or multiple users.

One user can have assigned one or multiple roles.

There is no limit in the number of roles you can create.

By default, when you create a mmesh account, you will find a role called `admin` assigned to the mmesh admin. This role grants access to all subsystems, resources and commands within your mmesh account.

To control the access level of your users in your mmesh, you will need to:

1. Create or configure the roles with the set of permissions.
2. Assign the roles to your users.

### Administration

You can manage the roles using the mmesh webUI or the mmesh CLI.

Browse the [IAM: Roles Administration](/docs/platform/administration/iam-roles/) section to learn how to manage the roles.

## Access Control Lists (ACLs)

An `ACL` controls the access to your nodes.

An ACL is defined with the set of nodes that the user will have access.

An ACL can be assigned to one or multiple users.

One user can have assigned one or multiple ACLs.

There is no limit in the number of ACLs you can create.

By default, when you create a mmesh account, you will find an ACL called `all-nodes` assigned to the mmesh admin. This ACL grants access to all your nodes in your mmesh topology.

To control the access to your nodes, you will need to:

1. Add nodes to your mmesh topology.
2. Create or configure your ACLs with the set of nodes.
3. Assign the ACL to your users.

### Administration

You can manage the ACLs using the mmesh webUI or the mmesh CLI.

Browse the [IAM: ACLs Administration](/docs/platform/administration/iam-acls/) section to learn how to manage the ACLs.
