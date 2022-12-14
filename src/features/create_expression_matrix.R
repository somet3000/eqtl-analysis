print('reading in RNA-seq data!')

# read in RNA-seq gene expression data
rnaseq.data <- read.table(
    'data/raw/GD462.GeneQuantRPKM.50FN.samplename.resk10.txt', 
    header = TRUE, 
    nrows = 25000, 
    colClasses = c('character', 'character', 'character', 'integer', rep('numeric', 462))
)

# adjust RNA-seq data to fit Matrix eQTL format
rownames(rnaseq.data) <- rnaseq.data$Gene_Symbol
rnaseq.data <- rnaseq.data[, 5:ncol(rnaseq.data)]

# read in first two columns of plink data to get samples
# read in plink output
snp.data <- read.table('data/temp/plink.raw', header = TRUE, nrows = 500, colClasses = c('character', 'character', rep(NULL, 101231)))
snp.samples <- snp.data$IID
rnaseq.data <- rnaseq.data[, colnames(rnaseq.data) %in% snp.samples]

print('writing output!')
# save output to file
write.table(rnaseq.data, 'data/out/matrix_eqtl_phenotype.txt')


