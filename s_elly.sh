#!/bin/bash
cs=(2 5 7 10 12 15 17 20 25 30 35 40)
ds=(2 3 4)
for i  in ${cs[@]};
do
    for d  in ${ds[@]};
    do
	   ./elly -k  $i -d $d -s 100 > out/elly/elly0_d${d}_c${i}.csv  
       ./elly -k  $i -d $d -s 4103493 > out/elly/elly1_d${d}_c${i}.csv  
       ./elly -k  $i -d $d -s 99887 > out/elly/elly2_d${d}_c${i}.csv  
    done

done
