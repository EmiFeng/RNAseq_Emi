1. Download your gene set of interest for hg19. For this example, I'll use the refGene table, but you can choose other gene sets, such as the knownGene table from the "UCSC Genes" track.

rsync -a -P rsync://hgdownload.soe.ucsc.edu/goldenPath/hg19/database/refGene.txt.gz ./
2. Unzip

gzip -d refGene.txt.gz
3. Remove the first "bin" column:

cut -f 2- refGene.txt > refGene.input
4. Convert to gtf:

genePredToGtf file refGene.input hg19refGene.gtf
5. Sort output by chromosome and coordinate

cat hg19refGene.gtf  | sort -k1,1 -k4,4n > hg19refGene.gtf.sorted
