# 1kgp-eqtl-analysis
eQTL analysis for chromosome 22 for all the genotypes in the 1000 Genomes Project.

This repository contains the code necessary to reproduce the output in my report! If you want to test the data, the test target is implemented and can be run using ```python run.py test```. If you have downloaded the data for the full analysis, it can be run using ```python run.py all```. 

The VCF data can be found from the 1000 Genomes NCBI database: https://ftp-trace.ncbi.nih.gov/1000genomes/ftp/release/

The gene expression data can be found from this Zenodo link: https://zenodo.org/record/6998955

The code in this repository will run the initial at-scale analysis and return the QQ-plot as a PDF file in the repository directory. All further analyses to generate figures for the report were created from different flavors of this analysis, using information like population metadata. This code can be accessed in vignette form by looking through the analysis notebook. 


