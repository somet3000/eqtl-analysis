# start from UCSD ETS scipy-ml Dockerfile
FROM ucsdets/scipy-ml-notebook

# install snpStats package that is required to read in plink files
USER root
RUN conda install --quiet --yes -c bioconda plink

# prevent running Jupyter notebook when 
CMD ["/bin/bash"]
