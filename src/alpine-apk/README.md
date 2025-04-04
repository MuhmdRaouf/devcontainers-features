
# alpine-apk (alpine-apk)

Installs Alpine's packages

## Example Usage

```json
"features": {
    "ghcr.io/MuhmdRaouf/devcontainers-features/alpine-apk:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| packages | List of packages to install. | array | - |
| upgradePackages | Upgrade apk packages? | boolean | false |


## How to specify packages?

Specify package names separated by commas in the `packages` option.

The following example installs `curl` and `nano`.

```json
"features": {
    "ghcr.io/MuhmdRaouf/devcontainer-features/alpine-apk:0.0.1": {
        "packages": ["curl", "nano"],
        "upgradePackages": true
    }
}
```

---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/MuhmdRaouf/devcontainers-features/blob/main/src/alpine-apk/devcontainer-feature.json)._
