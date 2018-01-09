#!/bin/bash

# dot   - filter for drawing directed graphs
# neato - filter for drawing undirected graphs
# twopi - filter for radial layouts of graphs
# circo - filter for circular layout of graphs
# fdp   - filter for drawing undirected graphs
# sfdp  - filter for drawing large undirected graphs

# create call graph
for i in $(ls *expand);
do
	filename=$(basename "$i" ".c.229r.expand")
	egypt $i | dot -Tsvg -o "$filename""_callgraph".svg
done

# create include graph
./cinclude2dot.pl 2> /dev/null | dot -Tsvg -o read_gpu_counters_include_graph.svg