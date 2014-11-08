#!/bin/bash
while read prefix input output genome
do
	BWAJOB=$(qsub -v "PREFIX_FILE=$prefix,INPUT_FILE=$input,OUTPUT_DIR=$output,GENOME_FILE=$genome" -N bwa.$prefix bwa.job)
	echo $BWAJOB	
done < $1

