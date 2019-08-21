#' Liver Toxicity Data
#'
#' The \code{liver.toxicity} data with \code{MultiAssayExperiment} class.
#'
#' @name liver.toxicity.mae
#' @docType data
#' @format A \code{MultiAssayExperiment} class
#' containing the following components: \describe{
#' \item{assay: gene}{data frame with 64 rows and 3116 columns. The expression
#' measure of 3116 genes for the 64 subjects (rats).}
#' \item{list("clinic")}{data frame with 64 rows and 10 columns, containing 10
#' clinical variables for the same 64 subjects.} \item{list("treatment")}{data
#' frame with 64 rows and 4 columns, containing the treatment information on
#' the 64 subjects, such as doses of acetaminophen and times of necropsies.}
#' \item{list("gene.ID")}{data frame with 3116 rows and 2 columns, containing
#' geneBank IDs and gene titles of the annotated genes}
#'
#' }
#' @import MultiAssayExperiment
#' @return none
#' @references Bushel, P., Wolfinger, R. D. and Gibson, G. (2007). Simultaneous
#' clustering of gene expression data with clinical chemistry and pathological
#' evaluations reveals phenotypic prototypes. \emph{BMC Systems Biology}
#' \bold{1}, Number 15.
#'
#' Lê Cao, K.-A., Rossouw, D., Robert-Granie, C. and Besse, P. (2008). A sparse
#' PLS for variable selection when integrating Omics data. \emph{Statistical
#' Applications in Genetics and Molecular Biology} \bold{7}, article 35.
#' @source The two liver toxicity data sets are a companion resource for the
#' paper of Bushel \emph{et al.} (2007), and was downloaded from:
#'
#' \url{http://www.biomedcentral.com/1752-0509/1/15/additional/}
#' @keywords datasets
NULL
