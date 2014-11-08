#!/bin/bash
while read sra
do
	echo anonftp@ftp.ncbi.nlm.nih.gov:/sra/sra-instant/reads/ByRun/sra/${sra:0:3}/${sra:0:6}/$sra/$sra.sra
	~/.aspera/connect/bin/ascp -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh \
	-k 1 -T -l200m \
	anonftp@ftp.ncbi.nlm.nih.gov:/sra/sra-instant/reads/ByRun/sra/${sra:0:3}/${sra:0:6}/$sra/$sra.sra .
done < $1

