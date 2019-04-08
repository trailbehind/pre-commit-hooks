#!/usr/bin/env bash
set -e

for filename in "$@"; do
    xmllint --schema schemas/svg.xsd --noout $filename
done
