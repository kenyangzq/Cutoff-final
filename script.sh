#!/bin/bash

Dim=$(sed -n '5p' control.inp | sed 's/[^0-9]*//g')
Numpts=$(sed -n '8p' control.inp | sed 's/[^0-9]*//g')
Numits=$(sed -n '10p' control.inp | sed 's/[^0-9]*//g')
Output=$(sed -n '12p' control.inp | sed 's/outfile = //g')
Final=$Output"final.txt"

k=$((Numits-1))

for i in `seq 1 $k`; do
 echo -e $Dim"\n"$Numpts | cat - $Output$i.txt > temp$i.txt
 cat temp$i.txt | ./qconvex  FN  p Fv > total$i.txt;
done

echo -e $Dim"\n"$Numpts | cat - $Final > temp.txt
cat temp.txt | ./qconvex   FN  p Fv > total$Numits.txt;
rm temp*.txt

