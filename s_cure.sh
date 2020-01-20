#!/bin/bash
s=(1 2 3 4 5 6 7)
d=(2 3 4 5)
t=(0)
for s  in ${s[@]};
do
    for d  in ${d[@]};
    do
        for t  in ${t[@]};
        do
	        ./cure -n 500 -d ${d} -s ${s} -t ${t}
        done    
    done

done
