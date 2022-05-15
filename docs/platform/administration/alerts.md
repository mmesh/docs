# Alerts

mmesh monitors your nodes and generates alerts when important events occur.

> See [Alerts](/platform/monitoring/alerts) section to find more information on mmesh alert system.

## Operations

You can manage your alerts using the mmesh webUI or the mmesh CLI.

### WebUI: Alerts

1. In the navigation menu on the left, click `Alerts` to browse your alerts.

### CLI: Alerts

#### List Alerts

List your alerts.

```shell
mmeshctl alert list
```

#### Show Alert

Show all the details of an alert.

```shell
mmeshctl alert show
```

#### Delete Alert

Remove an alert from the database.

```shell
mmeshctl alert delete
```

#### Add Note to Alert

Add a note or comment to an alert.

```shell
mmeshctl alert comment
```
