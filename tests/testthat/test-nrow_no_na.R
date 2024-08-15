test_that("nrow_no_na success", {

  # use base R's data.frame instead of tibble to minimize imports
  df <- data.frame(
    fruit = c("apple", "banana", "strawberry", "pineapple"),
    sugar = c(30, 50, 4, NA)
  )
  expect_equal(
    nrow_no_na(df, "sugar"),
    3
  )

  df <- data.frame(
    fruit = c("apple", "banana", "strawberry", "pineapple"),
    sugar = c(NA, NA, NA, NA)
  )
  expect_equal(
    nrow_no_na(df, "sugar"),
    0
  )
})

test_that("nrow_no_na fails", {

  # no dataframe as df
  vector <- c("apple", "banana", "strawberry", "pineapple", "sugar")
  expect_error(
    nrow_no_na(vector, "sugar"),
    "`df` must be a data frame"
  )

  # no string as colname
  df <- data.frame(
    fruit = c("apple", "banana", "strawberry", "pineapple"),
    sugar = c(30, 50, 4, NA)
  )
  expect_error(
    nrow_no_na(df, 3),
    "`colname` must be a single string"
  )

  # colname which is not available in df
  expect_error(
    nrow_no_na(df, "weight"),
    'The `colname` "weight" does not exist in the given `df`'
  )

})
