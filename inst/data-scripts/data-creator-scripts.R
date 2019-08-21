## In the long run, only assay-like data should be retained only really

########################### nutrimouse ###########################
## ----------- List -----------
## ---- adding ID to old sample names

library(mixOmics)
data(nutrimouse)
rownames(nutrimouse$gene) <- rownames(nutrimouse$lipid) <- paste0('ID', rownames(nutrimouse$lipid))
# save(nutrimouse, file = 'data/nutrimouse.rda') ## 11KB

## ----------- MultiAssayExperiment -----------
## load package before continuing CMD + SHIFT + L
data(nutrimouse)
rownames(nutrimouse$gene)
stopifnot(all(grepl('ID', rownames(nutrimouse$gene))))
stopifnot(all(grepl('ID', rownames(nutrimouse$lipid))))


X <- t(nutrimouse$lipid)
Y <- t(nutrimouse$gene)
# information biological units for colData component
info.sample <- DataFrame(diet = nutrimouse$diet, genotype = nutrimouse$genotype,
                         row.names = rownames(nutrimouse$gene))
nutrimouse.mae <- MultiAssayExperiment(
  experiments = ExperimentList(list(lipid=X, gene=Y)),
  colData = info.sample)

# save(nutrimouse.mae, file = 'data/nutrimouse.mae.rda') ## 12 KB

########################### liver.toxicity ###########################
## ----------- List -----------
## ---- adding ID to old sample names

library(mixOmics)
data(liver.toxicity)
## sample names need adjustment
rownames(liver.toxicity$gene)
rownames(liver.toxicity$clinic)

## clinic
if ( !identical(rownames(liver.toxicity$gene), rownames(liver.toxicity$clinic)) ) {
  rownames(liver.toxicity$clinic) <- paste0("ID", rownames(liver.toxicity$clinic))
}
identical(rownames(liver.toxicity$gene), rownames(liver.toxicity$clinic))

## treatment
if ( !identical(rownames(liver.toxicity$gene), rownames(liver.toxicity$treatment)) ) {
  rownames(liver.toxicity$treatment) <- paste0("ID", rownames(liver.toxicity$treatment))
}

identical(rownames(liver.toxicity$gene), rownames(liver.toxicity$treatment))

# save(liver.toxicity, file = 'data/liver.toxicity.rda') ## 842 KB

## ----------- MultiAssayExperiment -----------
## load package before continuing CMD + SHIFT + L
data(liver.toxicity)
stopifnot(all(grepl('ID', rownames(liver.toxicity$gene))))
stopifnot(all(grepl('ID', rownames(liver.toxicity$clinic))))
stopifnot(all(grepl('ID', rownames(liver.toxicity$treatment))))

# information biological units for colData component
info.sample <- DataFrame(liver.toxicity$treatment)
liver.toxicity.mae <- MultiAssayExperiment(
  experiments = ExperimentList(list(gene = t(liver.toxicity$gene),
                                    clinic = t(liver.toxicity$clinic))),
  colData = info.sample)

# save(liver.toxicity.mae, file = 'data/liver.toxicity.mae.rda') ## 774 KB




########################### breast.tumors ###########################
## ----------- List -----------
## ---- adding ID to old sample names

library(mixOmics)
data(breast.tumors)
breast.tumors %>% names()
## sample and gene names need adjustment
rownames(breast.tumors$gene.exp)
colnames(breast.tumors$gene.exp)
## make unique gene ids - even for unmatched ones
breast.tumors$genes$name[breast.tumors$genes$name==""] <- 'unmatched-gene-id'
breast.tumors$genes$name <- make.unique(breast.tumors$genes$name)

rownames(breast.tumors$gene.exp) <- paste0("ID", rownames(breast.tumors$gene.exp))
colnames(breast.tumors$gene.exp) <- breast.tumors$genes$name

# save(breast.tumors, file = 'data/breast.tumors.rda') ## 175 KB

## ----------- SummarizedExperiment -----------
## load package before continuing CMD + SHIFT + L
rowdata <- DataFrame(gene.description = breast.tumors$genes$description, row.names = breast.tumors$genes$name)
coldata <- DataFrame(breast.tumors$sample, row.names = rownames(breast.tumors$gene.exp) )
breast.tumors.se <-
  SummarizedExperiment(
    assays = list(breast.tumors = t(breast.tumors$gene.exp)),
    rowData = rowdata,
    colData = coldata
  )

# save(breast.tumors.se , file = 'data/breast.tumors.se.rda') ## 170 KB



########################### srbct###########################
## ----------- SummarizedExperiment -----------
## ---- adding ID to old sample names

library(mixOmics)
data(srbct)
## single omic with colData and rowData
srbct %>% names()
head(rownames(srbct$gene))
head(colnames(srbct$gene))
srbct$class
srbct$gene.name %>% head()
X <- t(srbct$gene)
coldata <- DataFrame(class = srbct$class, row.names = colnames(X))
rowdata <- DataFrame(srbct$gene.name)
srbct.se <- SummarizedExperiment(assays = list(srbct = X),
                                 rowData = rowdata,
                                 colData = coldata)
# save(srbct.se, file='data/srbct.se.rda') ## 482 KB


########################### linnerud ###########################
## ----------- List -----------
## ---- adding ID to old sample names

data(linnerud)
rownames(linnerud$exercise) <- rownames(linnerud$physiological) <-
  paste0("ID", rownames(linnerud$physiological) )
# save(linnerud, file = 'data/linnerud.rda')
#
### ----------- MultiAssayExperiment -----------
# Need to transpose matrices to be stored into experiments slot
X <- t(linnerud$exercise)
Y <- t(linnerud$physiological)

linnerud.mae <- MultiAssayExperiment(experiments = ExperimentList(list(
  exercise = X, physiological = Y
)))

# save(linnerud.mae, file = 'data/linnerud.mae.rda')
########################### multidrug ###########################
## this one is a tough one so just letting it go as is
## ----------- List -----------
## ---- adding ID to old sample names
library(mixOmics)
data(multidrug)
multidrug$comp.name %>% as.character() %>% duplicated() %>% sum()
### ----------- MultiAssayExperiment -----------
data(multidrug)
# Experiments
X <- t(multidrug$ABC.trans)
colnames(X) <- multidrug$cell.line$Sample
Y <- t(multidrug$compound)
colnames(Y) <- multidrug$cell.line$Sample
rownames(Y) <- multidrug$comp.name

# ColData
info.sample <- DataFrame(multidrug$cell.line$Class)
rownames(info.sample) <- colnames(X)

multidrug.mae <- MultiAssayExperiment(
  experiments = ExperimentList(list(ABC.trans=X, compound=Y)),
  colData = info.sample)
# save(multidrug.mae, 'data/multidrug.mae.rda')
