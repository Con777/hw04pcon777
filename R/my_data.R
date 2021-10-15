#' my_data_sequences
#' @docType data
#' @aliases my_data
#' Description
#' Data frame to be imported for testing functions.
#'
#' @return a data frame
#' @source hw04 instructions
#' @keywords datasets
"my_data"
## code to prepare `my_data` dataset goes here
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

my_data2 <- tibble::tribble(
  ~x, ~y, ~z, ~n,
  6, 2, 3, 2,
  6, 2, 3, 3,
  6, 2, 3, 4,
  6, 2, 3, 5,
  6, 2, 3, 6,
  6, 2, 3, 7,
  6, 2, 3, 9,
  6, 2, 3, 11,
  6, 2, 3, 13,
  6, 2, 3, 15,
  6, 2, 3, 16)

usethis::use_data(my_data, my_data2, overwrite = TRUE, internal = TRUE)


