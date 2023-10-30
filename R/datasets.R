#' Online-spending activity and demographics for a sample of households.
#'
#' @format A data frame of 10,000 rows representing hourly measurements and 15 variables
#' \describe{
#' \item{origin}{Weather station. Named `origin` to facilitate merging with
#'   [`nycflights13::flights`] data.}
#' \item{id}{Household id number.}
#' \item{anychildren}{Indicator variable for any children in the household.}
#' \item{broadband}{Relative humidity.}
#' \item{hispanic}{Indicator variable for Hispanic.}
#' \item{race}{Household race classification.}
#' \item{region}{Household region.}
#' \item{spend}{Online spending ($).}
#' }
#' @source Business Data Science by Matt Taddy.
"browser_data"