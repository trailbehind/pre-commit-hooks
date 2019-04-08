#!/usr/bin/env bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for filename in "$@"; do
    xmllint --schema $DIR/schemas/svg.xsd --noout $filename
done
