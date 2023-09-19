#!/bin/bash
set -e

echo "Executing: $@"
heaptrack -o heaptrack_out "$@"

echo "Generating Memory Peak FlameGraph"
heaptrack_print -f heaptrack_out.gz -p  --flamegraph-cost-type peak -F stacks.txt
/tmp/FlameGraph/flamegraph.pl --title "heaptrack: peak" --colors mem --countname peak < stacks.txt > fg_mem.svg
