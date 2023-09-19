setup:
	git clone https://github.com/brendangregg/FlameGraph.git /tmp/FlameGraph

install:
	cp fg_cpu /usr/local/bin/fg_cpu
	cp fg_mem /usr/local/bin/fg_mem
