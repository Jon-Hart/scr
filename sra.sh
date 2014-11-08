#!/bin/bash
while read input
do
	SRAJOB=$(qsub -v "INPUT_FILE=$input" -N sra.$input sra.job)
	echo $SRAJOB	
done < $1

