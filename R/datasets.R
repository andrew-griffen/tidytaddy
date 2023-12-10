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

#' Dow Jones Industrial Average data
#'
#' Daily data on the Dow Jones Industrial Average, which is a stock market index of 30 U.S. prominent companies.
#'
#' @format A tibble with 1,979 rows and 2 columns:
#' \describe{
#' \item{dja}{Index value.}
#' \item{day}{Ordered day of observation.}
#' }
#' @source Business Data Science by Matt Taddy.
"dja"

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

#' Airline passenger data
#'
#' Daily data on the number of airline passengers.
#'
#' @format A tibble with 1,979 rows and 2 columns:
#' \describe{
#' \item{year}{Two digit year.}
#' \item{month}{Numerical month.}
#' \item{passengers}{Number of passengers.}
#' \item{time}{Ordered of observations.}
#' }
#' @source Business Data Science by Matt Taddy.
"airline"

#' Data from a guy named George's inbox.
#'
#' Spam data created from emails in George's inbox.
#' Each email has been classified as spam or not and indicator variables (or one-hot incodings)
#' have been created for the most common words in the emails. Commonly used data to practice
#' creating a spam filter.
#'
#' @format A tibble with 4,601 rows and 58 columns:
#' \describe{
#' \item{spam}{Indicator variable for whether the email was classified as spam or not.}
#' \item{word_}{Indicator variable for the presence of the word _.}
#' }
#' @source Business Data Science by Matt Taddy.
"email"








