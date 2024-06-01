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
#' Daily data on the Dow Jones Industrial Average, which is a stock market index of 30 prominent U.S. companies.
#'
#' @format A tibble with 1,979 rows and 2 columns:
#' \describe{
#'      \item{dja}{Index value.}
#'      \item{day}{Ordered day of observation.}
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

#' Data from George's inbox.
#'
#' Data set created from emails in a guy named George's inbox.
#' Each email has been classified as spam or not and indicator variables (or one-hot encodings)
#' have been created for the most common words in the emails. Commonly used data to practice
#' creating a spam filter.
#'
#' @format A tibble with 4,601 rows and 58 columns:
#' \describe{
#' \item{spam}{Indicator variable for whether the email was classified as spam or not.}
#' \item{word_}{Indicator variable for the presence of the word_.}
#' }
#' @source Business Data Science by Matt Taddy.
"email"

#' German credit default data from Professor Hoffman.
#'
#' Data set with default and client characteristics.
#' Can be used to practice creating a statistical algorithm for banks on whether to extend credit card loans or not.
#'
#' @format A tibble with 1,000 rows and 9 columns:
#' \describe{
#' \item{default}{Binary variable indicating whether the client defaulted or not.}
#' \item{duration}{Duration of loan in months.}
#' \item{amount}{Loan amount.}
#' \item{installment}{Number of installments.}
#' \item{age}{Client age in years.}
#' \item{history}{Credit history.}
#' \item{purpose}{Loan purpose.}
#' \item{foreign}{German or foreign.}
#' \item{rent}{Boolean for renter or not.}
#' }
#' @source Business Data Science by Matt Taddy.
"credit"

#' Abortion and crime data.
#'
#' Data set from "The Impact Of Legalized Abortion On Crime" by John J. Donohue III And Steven D. Levitt.
#'
#' @format A tibble with 1,734 rows and 17 columns:
#' \describe{
#' \item{murder}{De-trended log murder rate.}
#' \item{violent}{De-trended log violent crime rate.}
#' \item{property}{De-trended log property crime rate.}
#' \item{ear}{Effective abortion rate.}
#' \item{state}{State.}
#' \item{fips}{Federal Information Processing Series (FIPS) code.}
#' \item{abbr}{State abbreviation.}
#' \item{year}{Year.}
#' \item{prison}{Lagged prisoners per capita.}
#' \item{police}{Lagged police per capita.}
#' \item{population}{State population.}
#' \item{unemp}{Unemployment rate.}
#' \item{income}{Income per capita.}
#' \item{poverty}{Poverty rate.}
#' \item{afdc}{AFDC (welfare) generosity at year t - 15.}
#' \item{gun}{Indicator for concealed weapons law.}
#' \item{beer}{Beer consumption per capita.}
#' }
#' @source Donohue and Levitt (2001).
"abortion"

#' Stock data
#'
#' Monthly returns 
#'
#' @format A tibble with 42,355 rows and 3 columns:
#' \describe{
#' \item{ticker}{Stock ticker.}
#' \item{month}{Month.}
#' \item{r}{Monthly return.}
#' }
#' @source Business Data Science by Matt Taddy.
"stocks"

#' S&P500 monthly returns
#'
#' @format A tibble with 84 rows and 2 columns:
#' \describe{
#' \item{month}{Month.}
#' \item{r_sp}{Monthly return.}
#' }
#' @source Business Data Science by Matt Taddy.
"sp"

#' Data on pickup trucks.
#'
#' @format A tibble with 46 rows and 4 columns:
#' \describe{
#' \item{year}{Vintage.}
#' \item{miles}{Odometer miles.}
#' \item{price}{Price.}
#' \item{make}{Make.}
#' }
#' @source Business Data Science by Matt Taddy.
"trucks"

#' Quality-control data from a semiconductor manufacturing process.
#'
#' @format A tibble with 1,477 rows and 201 columns:
#' \describe{
#' \item{FAIL}{Indicator variable for whether the observed chip failed or not.}
#' \item{SIG_}{Measurement from diagnostic sensor _ in the production process.}
#' }
#' @source Business Data Science by Matt Taddy.
"SC"


