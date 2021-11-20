#!/bin/bash

sports.pl -i ../data/rmUMI_fq\
	  -g /mnt/IM/reference/genome/gencode/bowtie/mm10\
	  -m ../annotation/Mus_musculus/miRBase/21/miRBase_21-mmu\
	  -r ../annotation/Mus_musculus/rRNAdb/mouse_rRNA\
	  -t ../annotation/Mus_musculus/GtRNAdb/mm10/mm10-tRNAs\
	  -e ../annotation/Mus_musculus/Ensembl/release-89/Mus_musculus.GRCm38.ncrna\
	  -f ../annotation/Mus_musculus/Rfam/12.3/Rfam-12.3-mouse\
	  -w ../annotation/Mus_musculus/piRBase/piR_mouse\
	  -o .\
	  -M 1\
	  -a\
	  -p 16\
	  2> sports.stderr\
	  > sports.stdout
