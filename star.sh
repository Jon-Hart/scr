#!/bin/bash
while read prefix input output genome
do
	STARJOB=$(qsub -v "PREFIX_FILE=$prefix,INPUT_FILE=$input,OUTPUT_DIR=$output,GENOME_FILE=$genome" -N star.$prefix star.job)
	echo $STARJOB	
done < $1

