#'Title cdna synthesis
#'
#'@description
#'\code{cdna} returns the complementary dna for the input  sequence
#'
#' @param x  is the input sequence passed into  cdna function  which contains character vector  "A","T","G","C"
#'
#' @return character vector ,complementary dna is synthesized by replacing "A" with "T" and "G" with "C"and viceversa
#' @export
#' @examples
#' test1<-cdna("ATAGCATCAAGGTACGATGC")
#' test1
#' TATCGTAGTTCCATGCTACG"
cdna<-function(x)
{
  basepair=c("A","T","G","C")
  abc<-unlist(strsplit(toupper(x),NULL))
  paste(unlist(lapply(abc,function(cdna){
    if(cdna=="A") stringss<-"T"
    if(cdna=="T") stringss<-"A"
    if(cdna=="G") stringss<-"C"
    if(cdna=="C") stringss<-"G"
    if(!cdna%in%basepair) stringss<-"N"
    return(stringss)
  })),collapse = "")
}

