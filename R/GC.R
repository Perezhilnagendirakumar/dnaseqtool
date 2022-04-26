#' Title Guanine and Cytosine  nucleotide  basepair calculation
#'
#'@description
#'\code{GC} returns percentage of Guanine and Cytosine  nucleotide basepair composition in the input sequence
#'
#' @param x is the input sequence passed into  GC function  which contains character vector  "A","T","G","C"
#'
#'
#' @returnnumeric value , total percentage of Guanine and Cytosine  nucleoptide base pair in the input sequence
#'
#'@export
#' @examples
#' test3<-GC("ATAGCATCAAGGTACGATGC")
#' test3
#' 45
GC<-function(x)
{
  input_vec <- unlist(strsplit(x, split = ""))
  print(input_vec)
  mylength <- length(input_vec)
  G_total <- sum(input_vec == "G")
  C_total <-sum(input_vec=="C")
  GC_total<-(G_total + C_total)/mylength *100
  return(GC_total)
}


