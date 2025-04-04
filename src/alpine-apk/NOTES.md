## How to specify packages?

Specify package names separated by commas in the `packages` option.

The following example installs `curl` and `git`.

```json
"features": {
    "ghcr.io/MuhmdRaouf/devcontainers-features/alpine-apk:0": {
        "packages": "curl,git",
        "upgradePackages": true
    }
}
```
OR

```json
"features": {
    "ghcr.io/MuhmdRaouf/devcontainers-features/alpine-apk:0": {
        "packages": ["curl", "git"],
        "upgradePackages": true
    }
}
```