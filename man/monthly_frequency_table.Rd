% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frequency_analysis.R
\name{monthly_frequency_table}
\alias{monthly_frequency_table}
\title{Create a table of monthly frequency analysis}
\usage{
monthly_frequency_table(
  gw_level_dv,
  parameter_cd = NA,
  date_col = NA,
  value_col = NA,
  approved_col = NA
)
}
\arguments{
\item{gw_level_dv}{daily groundwater level data frame. Often obtained from from \code{readNWISdv}}

\item{parameter_cd}{If data in gw_level_dv comes from NWIS, the parameter_cd 
can be used to define the value_col.
 If the data doesn't come directly from NWIS services, this 
can be set to \code{NA},and this argument will be ignored.}

\item{date_col}{the heading of the date column. The default is \code{NA},
which the code will try to get the column name automatically.}

\item{value_col}{name of value column. The default is \code{NA},
which the code will try to get the column name automatically.}

\item{approved_col}{name of column to get provisional/approved status.}
}
\value{
a data frame of monthly groundwater level statistics including the
5th, 10th, 25th, 75th, 90th, and 95th percentiles; the number of
years of data; and the lowest monthly median and the highest monthly
median.
}
\description{
Create a table of monthly frequency analysis
}
\examples{

# site <- "263819081585801"
p_code_dv <- "62610"
statCd <- "00001"
# gw_level_dv <- dataRetrieval::readNWISdv(site, p_code_dv, statCd = statCd)
gw_level_dv <- L2701_example_data$Daily
monthly_frequency <- monthly_frequency_table(gw_level_dv,
                                             parameter_cd = "62610")
head(monthly_frequency)
}
