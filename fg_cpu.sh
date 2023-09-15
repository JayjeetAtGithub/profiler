#!/bin/bash
set -e

echo "Executing: $@"
perf record -F 99 -a -g -- "$@"

echo "Generating CPU FlameGraph"
perf script | /tmp/FlameGraph/stackcollapse-perf.pl > out.perf-folded
/tmp/FlameGraph/flamegraph.pl out.perf-folded > fg_cpu.svg
