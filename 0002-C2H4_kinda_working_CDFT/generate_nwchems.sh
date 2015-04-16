for i in ` seq -w 3 0.25 15 `
do
 cat C2H4_C2H4_distDIST.nw | sed -e "s/ X / ${i} /" > C2H4_C2H4_dist${i}.nw
done
