library(zoo)

#' Title sliding plot function
#'
#' @param windowsize
#' @param inputseq
#'
#' @return graphical / visual representation of input sequence
#' @export
#'
#' @examples
#' slidingplot(10,"AAAATTTGGGCCC")
slidingplot = function(windowsize, inputseq)
{
  print(nchar(inputseq)-windowsize)
  s = strsplit(inputseq, "")[[1]]
  starts = seq(1, nchar(inputseq)-windowsize, by = windowsize)
  n = length(starts)
  print(n)
  letters = c("A", "C", "G", "T")
  colors = c("green", "black", "red", "blue")

  counts = t(sapply(letters, function(l) rollapply(s, windowsize, function(x) mean(x == l))))
  plot(counts[1, ], type="l", col=colors[1], xlab="Nucleotide start position",ylab="ATGC content")
  for (i in 2:4) {
    points(counts[i, ], type="l", col=colors[i])
  }
  print(counts)
}

