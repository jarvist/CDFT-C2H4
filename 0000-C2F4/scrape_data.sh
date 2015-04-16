for folder in *.??/
do
#C2H4_C2F4_dist04.75
 dist=${folder:14:5}

#line 3 - gnd state dft
#line 5 - cdft 
  dft=` grep "DFT energy"  ${folder}/*.out | awk '{print $5}' | sed -n 3p `
 cdft=` grep "DFT energy"  ${folder}/*.out | awk '{print $5}' | sed -n 5p `

 excited=` grep Excited ${folder}/*.out | awk '{print $5}' `

 echo $dist $dft $cdft $excited
done
