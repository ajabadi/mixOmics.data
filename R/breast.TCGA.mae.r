#' Breast Cancer multi omics data from TCGA
#' 
#' The \code{breast.TCGA} train set data with \code{MultiAssayExperiment}
#' class.
#' 
#' See \code{breast.TCGA} documentation.
#' 
#' @name breast.TCGA.mae
#' @docType data
#' @format The format is: Formal class 'MultiAssayExperiment' [package
#' "MultiAssayExperiment"] with 5 slots ..@ ExperimentList:Formal class
#' 'ExperimentList' [package "MultiAssayExperiment"] with 4 slots .. .. ..@
#' listData :List of 3 .. .. .. ..$ mirna : num [1:184, 1:150] 11.8 12.9 11.9
#' 14.8 10.9 ...  .. .. .. .. ..- attr(*, "dimnames")=List of 2 .. .. .. .. ..
#' ..$ : chr [1:184] "hsa-let-7a-1" "hsa-let-7a-2" "hsa-let-7a-3" "hsa-let-7b"
#' ...  .. .. .. .. .. ..$ : chr [1:150] "A0FJ" "A13E" "A0G0" "A0SX" ...  .. ..
#' .. ..$ mrna : num [1:200, 1:150] 4.36 7.53 3.96 4.46 2.26 ...  .. .. .. ..
#' ..- attr(*, "dimnames")=List of 2 .. .. .. .. .. ..$ : chr [1:200] "RTN2"
#' "NDRG2" "CCDC113" "FAM63A" ...  .. .. .. .. .. ..$ : chr [1:150] "A0FJ"
#' "A13E" "A0G0" "A0SX" ...  .. .. .. ..$ protein: num [1:142, 1:150] 0.0491
#' 0.4475 -0.0743 -0.3812 0.0261 ...  .. .. .. .. ..- attr(*, "dimnames")=List
#' of 2 .. .. .. .. .. ..$ : chr [1:142] "14-3-3_epsilon" "4E-BP1"
#' "4E-BP1_pS65" "4E-BP1_pT37" ...  .. .. .. .. .. ..$ : chr [1:150] "A0FJ"
#' "A13E" "A0G0" "A0SX" ...  .. .. ..@ elementType : chr "ANY" .. .. ..@
#' elementMetadata: NULL .. .. ..@ metadata : list() ..@ colData :Formal class
#' 'DataFrame' [package "S4Vectors"] with 6 slots .. .. ..@ rownames : chr
#' [1:150] "A0FJ" "A13E" "A0G0" "A0SX" ...  .. .. ..@ nrows : int 150 .. .. ..@
#' listData :List of 1 .. .. .. ..$ subtype: Factor w/ 3 levels
#' "Basal","Her2",..: 1 1 1 1 1 1 1 1 1 1 ...  .. .. ..@ elementType : chr
#' "ANY" .. .. ..@ elementMetadata: NULL .. .. ..@ metadata : list() ..@
#' sampleMap :Formal class 'DataFrame' [package "S4Vectors"] with 6 slots .. ..
#' ..@ rownames : NULL .. .. ..@ nrows : int 450 .. .. ..@ listData :List of 3
#' .. .. .. ..$ assay : Factor w/ 3 levels "mirna","mrna",..: 1 1 1 1 1 1 1 1 1
#' 1 ...  .. .. .. ..$ primary: chr [1:450] "A0FJ" "A13E" "A0G0" "A0SX" ...  ..
#' .. .. ..$ colname: chr [1:450] "A0FJ" "A13E" "A0G0" "A0SX" ...  .. .. ..@
#' elementType : chr "ANY" .. .. ..@ elementMetadata: NULL .. .. ..@ metadata :
#' list() ..@ drops : list() ..@ metadata : list()
#' @keywords datasets
#' @examples
#' 
#' data(breast.TCGA.mae)
#' 
NULL