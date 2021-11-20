#!/bin/bash

umiLength=8
for f in ../raw/*.fastq.gz; do
f2=`basename $f .fastq.gz`
echo $f2
cutadapt -a TGGAATTCTCGGGTGCCAAGG -e 0.05 --minimum-length=18 --max-n=1 --cores=16 $f 2>$f2.log| \
 paste - - - - | sort -u --parallel 16 --buffer-size 2G --stable -t $'\t' -k2,2 | \
  awk -F"\t" -v umiLength=$umiLength '{
    sl=length($2)
    print $1"\n"substr($2,umiLength+1,sl-umiLength)"\n+\n"substr($4,umiLength+1,sl-umiLength)
  }' | pigz -3 -p 16 > `basename $f`
done
