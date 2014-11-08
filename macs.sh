#!/bin/bash
while read prefix input output control
do
	HTSEQJOB=$(qsub -v "PREFIX_FILE=$prefix,INPUT_FILE=$input,OUTPUT_DIR=$output,CONTROL_FILE=$control" -N macs.$prefix macs.job)
	echo $HTSEQJOB	
done < $1

