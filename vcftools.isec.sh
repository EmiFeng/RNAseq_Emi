

bgzip xxx.vcf
tabix -p vcf xxx.vcf.gz
vcf-isec -f -c aaa.vcf.gz bbb.vcf.gz > a.only.vcf
