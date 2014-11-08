#!/bin/bash
while read prefix input output genome
do
	HTSEQJOB=$(qsub -v "GTF=/gpfs/home/jhart/bedops/hg19.intron.gtf,ID=gene_id,TYPE=intron,PREFIX_FILE=$prefix,INPUT_FILE=$input,OUTPUT_DIR=$output,GENOME_FILE=$genome" -N htseq.intron.$prefix htseq.star.job)
	echo $HTSEQJOB	
done < $1

