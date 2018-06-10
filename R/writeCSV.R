
library(devtools)
library(roxygen2)


#' Convert your data into a dataframe and write that dataframe to a .csv
#'
#' @param data Data to be put into a dataframe
#' @param predictstatement Predictions generated from fit model
#' @param filename Desired new .csv file name
#'
#' @return Nothing
#' @export
writeCSV <- function(testdata, predictstatement, filename="yourAnswer") {
  fit2 <- data.frame(SK_ID_CURR = testdata$SK_ID_CURR, TARGET = predictstatement)
  write.csv(fit2, filename, row.names = FALSE, col.names = FALSE)
}
