#!/usr/bin/env bash
set -euo pipefail

THRESHOLD="${THRESHOLD:-80}"

USAGE=$(df -P / | awk 'NR == 2 {gsub(/%/, "", $5); print $5}')

echo "Filesystem /: ${USAGE}% used (threshold: ${THRESHOLD}%)"

if (( USAGE >= THRESHOLD )); then
    echo "WARNING: disk usage has reached the threshold"
else
    echo "OK: disk usage below the threshold"
fi