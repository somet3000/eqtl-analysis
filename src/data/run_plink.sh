# plink commands necessary to process .vcf data for eQTL analysis 
plink --vcf data/raw/ALL.chr22.phase1_release_v3.20101123.snps_indels_svs.genotypes.vcf.gz \
      --biallelic-only \
      --maf 0.05 \
      --out data/temp/plink \
      --make-bed
      
plink --bfile data/temp/plink \
      --recode A \
      --out data/temp/plink
