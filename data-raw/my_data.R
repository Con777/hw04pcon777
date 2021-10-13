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

usethis::use_data(my_data, overwrite = TRUE)



