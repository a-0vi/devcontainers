#!/usr/bin/env bash

set -e

source dev-container-features-test-lib

check "user is vscode" grep vscode <(whoami)

bins=(
    pulumi
    crd2pulumi
)

for bin in "${bins[@]}"; do
    check "$bin" command -v "$bin"
done

reportResults
