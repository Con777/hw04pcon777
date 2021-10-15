#' Line plot for myseq_n output values
#' Description
#' Takes a data frame input, converts it into a vector, and uses myseq_n function to calculate output that is then plugged into a line plot
#' @param df data frame input
#'
#' @return a line plot of the output values for a consistent set of values for the vector and different values of n in increasing order of n
#' @export
#'
#' @examples
#' run_dfseq(my_data)
#' run_dfseq(my_data2)

run_dfseq <- function(df){
  stopifnot(is.data.frame(df))
  df$output <- 0
for (i in seq_along(df$n)){
  vec1 <- df[1:(length(df)-2)]
  vec1 <- as.numeric(unlist(vec1))
  vec1 <- split(vec1, f = 1:nrow(df))
  df$output[[i]] <- round(myseq_n(x = vec1[[i]], n = df$n[[i]]), digits = 3)
  output <- as.numeric(df$output)
  n <- as.numeric(df$n)
  plot <- ggplot2::ggplot(mapping = ggplot2::aes(x = n, y = output))+
    ggplot2::geom_line() +
    ggplot2::ggtitle(label = paste0('My Sequence:', list(output))) +
    ggplot2::ylab('Sequence Value')
}
  plot

}

