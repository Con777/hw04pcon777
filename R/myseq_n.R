myseq_n <- function(x, n){
  y <- vector(mode = "double", length = length(x))
  for (i in seq_along(y)){
    if (i>3){
      y[[i]] <- y[[i-1]] + ((y[[i-3]] - y[[i-2]])/sqrt(i))
    } else{
      y[[i]] <- x[[i]]
    }
  }
  y[[n]]
}
