#' Sequence calculation for nth value
#' @description Takes a vector as input x containing the first three numeric elements of a sequence and a second argument n integer-valued numeric denoting the length of the sequence to calculate and return the nth element of the sequence.
#' @param x numeric vector
#' @param n numeric value useed to identify which element to be returned
#'
#' @return numeric nth element of sequence
#' @export
#'
#' @examples
#' myseq_n(x = c(2, 3, 5), n = 3)
#' myseq_n(x = c(2, 4, 5), n = 5)
myseq_n <- function(x, n){
  stopifnot(n > 0)
  y <- vector(mode = "double", length = n)
  for (i in seq_along(y)){
    if (i>3){
      y[[i]] <- y[[i-1]] + ((y[[i-3]] - y[[i-2]])/sqrt(i))
    } else{
      y[[i]] <- x[[i]]
    }
  }
  y[[n]]
}
