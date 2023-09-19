setup:
	rm -rf /tmp/FlameGraph
	git clone https://github.com/brendangregg/FlameGraph.git /tmp/FlameGraph

install:
	sudo cp fg_cpu /usr/local/bin/fg_cpu
	sudo cp fg_mem /usr/local/bin/fg_mem
