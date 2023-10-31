#' Online-spending activity and demographics for a sample of households.
#'
#' @format A tibble with  10,000 rows and 7 columns:
#' \describe{
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

#' GDP and imports data by country in 2022.
#'
#' @format A tibble with 174 rows and 4 columns:
#' \describe{
#' \item{country}{Country name.}
#' \item{year}{Year.}
#' \item{gdp}{Gross domestic product, millions $ (2022).}
#' \item{imports}{Value of imports, millions $ (2022).}
#' }
#' @source Wikipedia.
"gdp"

#' Orange juice sales data collected in the 1990s from Dominick's, which was a Chicago-area chain store.
#'
#' @format A tibble with 28,947 rows and 4 columns:
#' \describe{
#' \item{sales}{Sales volume ($).}
#' \item{price}{Price ($).}
#' \item{brand}{Orange juice brand.}
#' \item{feat}{Indicator for whether brand was advertised that week or not.}
#' }
#' @source Kilts Center at the University of Chicago's Booth School of Business.
"oj"

