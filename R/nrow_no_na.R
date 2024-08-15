#' Number of non missing (NA) values in specified column in dataframe
#'
#' @param df Dataframe.
#' @param colname String. Column name to filter for non-NA values.
#'
#' @return Integer. Number of rows in df filtered by non-NA values in column colname.
#' @export
#'
#' @examples
#' df <- data.frame(
#' fruit = c("apple", "banana", "strawberry", "pineapple"),
#' sugar = c(30, 50, 4, NA)
#' )
#' nrow_no_na(df, "sugar")
#'
nrow_no_na <- function(df, colname) {

  check_data_frame(df)
  check_string(colname)

  # check colname in df
  colnames <- df %>% colnames()
  if (!colname %in% colnames) {
    cli_abort("The {.arg colname} {.val {colname}} does not exist in the given {.arg df}.
              Please check your spelling and ensure that the column exists in the dataframe.")
  }

  nrow_no_na <- df %>%
    filter(!is.na(!!as.symbol(colname))) %>%
    nrow()

  return(nrow_no_na)
}
