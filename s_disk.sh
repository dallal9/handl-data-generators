#!/bin/bash
s=(1 2 3 4 5 6 7)
d=(2 3 4 5)
t=(0 1 2)
for s  in ${s[@]};
do
    for d  in ${d[@]};
    do
        for t  in ${t[@]};
        do
	        ./disk -n 500 -d ${d} -s ${s} -t ${t}
        done    
    done

done
