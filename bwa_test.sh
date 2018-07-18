#! /bin/bash
#PBS -N bwa
#PBS -l walltime=99:9:9
#PBS -l nodes=1:ppn=12
#PBS -o bwa_test.log
#PBS -j oe
#PBS -V
#PBS -q cal

# usage: qsub bwa_test.sh
# qstat to see the status of my jobs

		source /home/bio-chenbw/Prog/Python/HPC_funcs.sh /home/bio-chenbw/FSJ
#		bwa index -a bwtsw /home/bio-chenbw/Ref/hg19/hg19.fa -p hg19
#		bwa mem -t 12 -M hg19 1_1.fastq.gz 1_2.fastq.gz > abc.sam
#		samtools view -q 60 -hbS abc.sam > abc.q60.bam
		samtools sort abc.q60.bam > abc.sorted.bam
		samtools mpileup -uf /home/emi/Documents/bwa-test/hg19.fa abc.sorted.bam | bcftools call -vmO z -o abc.q60.snp_indel.vcf.gz
		
