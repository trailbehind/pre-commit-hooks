#!/usr/bin/env bash
set -e

for filename in "$@"; do
    t=`mktemp`
    pg_format -f 2 $filename -o $t
    mv $t $filename
done
