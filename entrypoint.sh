#!/bin/sh -l

set -e

trap "echo Signal received; exit" INT TERM

CURDIR=$(cd $(dirname $0); pwd)
REPORT="${CURDIR}/target/lcov.info"

options="$1"
options="$options -o $REPORT"

grcov $options
echo "::set-output name=report::${REPORT}"
