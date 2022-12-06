genes <- read.table(
    'data/raw/GD462.GeneQuantRPKM.50FN.samplename.resk10.txt', 
    header = TRUE,
    nrows = 25000,
    colClasses = c('character', 'character', 'character', 'integer', rep('numeric', 462))
)

genes <- genes[, c('Gene_Symbol', 'Chr', 'Coord')]

colnames(genes) <- c('geneid', 'chr', 'left')
genes$right <- genes$left + 1

print('writing gene info file!')
write.table(genes, 'data/out/gene_info.txt', sep = '\t', row.names = FALSE)

snp.df <- read.table('data/temp/plink.bim', header = FALSE)
snp.df <- snp.df[, c('V1', 'V2', 'V4')]
snp.df <- snp.df[, c('V2', 'V1', 'V4')]
colnames(snp.df) <- c('snpid', 'chr', 'pos')

# read in genotype matrix
genotype.matrix <- read.table('data/out/matrix_eqtl_genotype_data.txt', row.names = NULL)
snp.names <- genotype.matrix$row.names
snp.df <- snp.df[snp.df$snpid %in% snp.names, ]

print('writing snp info file!')
write.table(snp.df, 'data/out/snp_info.txt', sep = '\t', row.names = FALSE)
