
library(devtools)
library(roxygen2)


#' Replaces NA values with median value of certain column
#'
#' @param df The dataframe we wish to alter
#' @param colName Specific column name from dataframe we wish to alter
#'
#' @return Returns modified dataframe
#' @export
#' @import tidyr
#'
replaceNansWithMedian <- function(df, colName) {
  colMedian <- median(df[[colName]], na.rm=TRUE)
  df[[colName]] <- tidyr::replace_na(df[[colName]], colMedian)
  return(df)
}
