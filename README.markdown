# collectd-mikrotik

Minimal collectd just for fetching statistics from Mikrotik RouterOS and sending them elsewhere via the `network` plugin.

# Local development

Ensure you have Docker, then run:

```
make cibuild
```

This compiles a cut down version of collectd with only these plugins:

 - `network`
 - `routeros`

Then to create package, run :

```
make cipackage
```

This produces a package in `artifacts/`
