my_df <- function(x, y, z, n) {
  # if(n<0){
  #   stop("n must be positive!")
  # }
  # else{
  # df <- data.frame(x = rep.int(x, n), y = rep.int(y, n),
  #               z = rep.int(z, n), n = (1:n))
  # assign("df",df,envir = .GlobalEnv)
  # View(df)
  # plot(df$n, )
#   }
# }

my_df <- function(x) {

    df <- data.frame(x)
    assign("df",df,envir = .GlobalEnv)
    my_seq_df <- myseq_n(x)
    View(df)
    ggplot(x = df$n, y = my_seq_df)
}

my_df2 <- function(df){
  stopifnot(is.data.frame(df))
  df$output <- 0
for (i in seq_along(nrow(df)))
  df2 <- as.numeric(unlist(df))
  df2 <- split(df2, ceiling((df)))
  df$output[[i]] <- myseq_n(df[[i]], df$n[[i]])
  n <- as.numeric(df$n)
  df
}
# row.wise
# for loop converting entr



my_data <- tibble::tribble(
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
