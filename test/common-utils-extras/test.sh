#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

bins=(
    rg
    bat
    exa
    hyperfine
    fd
    zoxide
    nvim
    http
    fzf
    socat
    parallel
    gum
    yq
)

for bin in "${bins[@]}"; do
    check "$bin" command -v "$bin"
done

reportResults