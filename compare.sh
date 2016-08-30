#!/bin/bash

./energy_briefoutput
./script.sh
./L-BFGS

Dim=$(sed -n '5p' control.inp | sed 's/[^0-9]*//g')
Numpts=$(sed -n '8p' control.inp | sed 's/[^0-9]*//g')
Numits=$(sed -n '10p' control.inp | sed 's/[^0-9]*//g')
Output=$(sed -n '12p' control.inp | sed 's/outfile = //g')
Final=$Output"bfgs.txt"

Name="total"$Numits".txt"
rm *final.txt

mv $Output".txt" $Output"final.txt"
mv $Name "total-final.txt"


echo -e $Dim"\n"$Numpts | cat - $Final > temp.txt
cat temp.txt | ./qconvex   FN  p Fv > total-bfgs.txt;
rm temp.txt


rm total[0-9].txt
rm total[0-9][0-9].txt
rm $Output*.txt
rm eps*.txt


