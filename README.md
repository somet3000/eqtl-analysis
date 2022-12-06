# 1kgp-eqtl-analysis
eQTL analysis for chromosome 22 for all the genotypes in the 1000 Genomes Project.

This repository contains the code necessary to reproduce the output in my report! If you want to test the data, the test target is implemented and can be run using ```python run.py test```. If you have downloaded the data for the full analysis, it can be run using ```python run.py all```. 

The VCF data can be found from the 1000 Genomes NCBI database: https://ftp-trace.ncbi.nih.gov/1000genomes/ftp/release/

The gene expression data can be found from this Zenodo link: https://zenodo.org/record/6998955

The code in this repository will run the initial at-scale analysis and return the QQ-plot as a PDF file in the repository directory. All further analyses to generate figures for the report were created from different flavors of this analysis, using information like population metadata. This code can be accessed in vignette form by looking through the analysis notebook. Genome browser plots can be produced via LocusZoom.

The analysis is slightly different when running at-scale, which is the reason why there are separate scripts for testing on a smaller subset! 

Performing a population-specifc eQTL analysis would benefit from more RAM! Data can be obtained from the 1000 Genomes Project.

Uses both the plink (https://www.cog-genomics.org/plink/1.9/input) and Matrix eQTL (http://www.bios.unc.edu/research/genomic_software/Matrix_eQTL/) packages. Check them out!

## File Structure

```src/features/run_plink.sh``` runs the plink package to preprocess the VCF file before creating a SNP matrix. The ```src/features/run_plink_test.sh``` script does this for the mock VCF file. 

```src/features/create_expression_matrix.R``` creates the RNA-sequencing matrix in the format required for the matrix eQTL package. The ```src/features/create_expression_matrix_test.R```  version does this on a smaller mock RNA-seq matrix.

```src/features/create_genotype_matrix.R``` creates the SNP-matrix in the format required for the matrix eQTL package. The ```src/features/create_genotype_matrix_test.R``` version does this on a smaller mock SNP dataset.

```src/features/create_gene_and_snp_info.R``` file creates SNP and gene coordinate information which can be used for eQTL filtering when running an at-scale analysis. These features would not be compatible on the smaller mock dataset, which is why there are separate scripts for testing and at-scale analysis. 

Thanks for checking out this repo! :)
