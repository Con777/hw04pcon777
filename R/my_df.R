my_df2 <- function(df){
  stopifnot(is.data.frame(df))
  df$output <- 0
for (i in seq_along(nrow(df)))
  df2 <- df[1:(length(df)-2)]
  df2 <- as.numeric(unlist(df2))
  df2 <- split(df2, f = 1:nrow(df))
  n <- as.numeric(df$n)
  n <- split(n, f = nrow(df))
  df$output[[i]] <- myseq_n(x = df2[[i]], df$n[[i]])
  df
}

@my_data <- tibble::tribble(
  ~x, ~y, ~z, ~n,
  4, 4, 3, 2,
  4, 4, 3, 3,
  4, 4, 3, 4,
  4, 4, 3, 5,
  4, 4, 3, 6,
  4, 4, 3, 7,
  4, 4, 3, 9,
  4, 4, 3, 11,
  4, 4, 3, 13,
  4, 4, 3, 15,
  4, 4, 3, 16)

my_df2(my_data)
