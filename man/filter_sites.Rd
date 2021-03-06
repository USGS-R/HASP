% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analyze.R
\name{filter_sites}
\alias{filter_sites}
\title{filter_sites}
\usage{
filter_sites(x, num_years = NA, start_year = NA, end_year = NA)
}
\arguments{
\item{x}{aquifer data}

\item{num_years}{integer number of years required. This can be
\code{NA}, in which case the filter will use the full range of the data.}

\item{start_year}{integer the first year to filter from. If \code{NA},
the filter will use the minimum from the data.}

\item{end_year}{integer the last year to filter from. If \code{NA},
the filter will use the last year.}
}
\value{
data frame filter of x
}
\description{
Filter down to sites with num_years of data
}
\examples{
aquifer_data <- aquifer_data
num_years <- 30

aq_data <- filter_sites(aquifer_data, num_years)
}
