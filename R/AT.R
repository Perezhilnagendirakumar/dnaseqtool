#' Title Adenine and Thymine nucleotide  basepair calculation
#'@description
#'\code{AT} returns percentage of Adenine and Thymine nucleotide basepair composition in the input sequence
#'
#' @param  x is the input sequence passed into  AT function  which contains character vector  "A","T","G","C"
#'
#'@return total percentage of Adenine and Thymine nucleoptide base pair in the input sequence
#'@export
#' @examples
#' test2<-AT("ATAGCATCAAGGTACGATGC")
#' test2
#' 55
AT <- function(x)
{
  input_vec <- unlist(strsplit(x, split = ""))
  print(input_vec)
  mylength <- length(input_vec)
  A_total <- sum(input_vec == "A")
  T_total <-sum(input_vec=="T")
  AT_total<-(A_total + T_total)/mylength *100
  return(AT_total)

}

