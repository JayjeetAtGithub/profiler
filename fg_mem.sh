#!/bin/bash
set -e

heaptrack -o heaptrack.gz "$@"
heaptrack_print -f heaptrack.gz -p -F stacks.txt
/tmp/FlameGraph/flamegraph.pl --title "heaptrack" --colors mem --countname peak < stacks.txt > fg_mem.svg
