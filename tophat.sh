#!/bin/bash
while read prefix input output genome
do
	TOPHATJOB=$(qsub -v "PREFIX_FILE=$prefix,INPUT_FILE=$input,OUTPUT_DIR=$output,GENOME_FILE=$genome" -N tophat.$prefix tophat.job)
	echo $TOPHATJOB	
done < $1

