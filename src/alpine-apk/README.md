
# Alpine's apk packages (alpine-apk)

Installs packages via alpine's apk.

## Example Usage

```json
"features": {
    "ghcr.io/MuhmdRaouf/devcontainers-features/alpine-apk:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| packages | A comma-separated list of packages to install using apk. If not specified, no packages will be installed. | string | - |
| upgradePackages | Whether to upgrade all packages using apk. | boolean | false |

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

---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/MuhmdRaouf/devcontainers-features/blob/main/src/alpine-apk/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
