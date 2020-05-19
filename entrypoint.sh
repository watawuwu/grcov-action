#!/bin/sh -l

set -xe

trap "echo Signal received; exit" INT TERM

REPORT_FILE="lcov.info"

report_path="${HOME}/${REPORT_FILE}"
runner_report_path="${RUNNER_TEMP}/_github_home/${REPORT_FILE}"

options="$1"
options="$options -o $report_path"

grcov $options
echo "::set-output name=report::${runner_report_path}"
