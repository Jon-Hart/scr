#!/bin/bash
while read prefix input output genome
do
	HTSEQJOB=$(qsub -v "GTF=/gpfs/home/jhart/gencode.v19.long_noncoding_RNAs.gtf,ID=gene_name,PREFIX_FILE=$prefix,INPUT_FILE=$input,OUTPUT_DIR=$output,GENOME_FILE=$genome" -N htseq.long.$prefix htseq.star.job)
	echo $HTSEQJOB	
done < $1

