#!/bin/bash
while read prefix input output genome
do
	HTSEQJOB=$(qsub -v "PREFIX_FILE=$prefix,INPUT_FILE=$input,OUTPUT_DIR=$output,GENOME_FILE=$genome" -N htseq.$prefix htseq.job)
	echo $HTSEQJOB	
done < $1

