#!/bin/sh

set -e

PACKAGES=${PACKAGES:-""}
UPGRADE_PACKAGES=${UPGRADEPACKAGES:-"false"}

info() {
    echo "[!] $1"
}

success() {
    echo "[✓] $1"
}

error() {
    echo "[✗] $1"
}

if ! command -v tr >/dev/null 2>&1; then
    info "'tr' command not found. Installing coreutils (provides tr)..."
    apk add --no-cache coreutils
fi

APK_PACKAGES=$(echo "$PACKAGES" | tr ',' ' ')

if [ -z "$PACKAGES" ] && [ "$UPGRADE_PACKAGES" = "false" ]; then
    info "No packages specified, and no upgrade required. Skipping installation."
    exit 0
fi

if [ "$(id -u)" -ne 0 ]; then
    error "Script must be run as root. Use sudo, su, or add 'USER root' to your Dockerfile."
    exit 1
fi

is_packaged_installed() {
    apk info -e "$1" >/dev/null 2>&1
}

install_packages() {
    for package in $APK_PACKAGES; do
        if ! is_packaged_installed "$package"; then
            info "Installing package: ${package}"
            apk add --no-cache "$package"
            success "Installed: ${package}"
        else
            success "Already installed: ${package}"
        fi
    done
}

if [ "$UPGRADE_PACKAGES" = "true" ]; then
    info "Upgrading all packages..."
    apk upgrade --no-cache
    success "System packages upgraded"
fi

install_packages

success "Done!"
