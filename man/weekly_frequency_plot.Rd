% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frequency_analysis.R
\name{weekly_frequency_plot}
\alias{weekly_frequency_plot}
\title{Plot weekly frequency analysis}
\usage{
weekly_frequency_plot(
  gw_level_dv,
  parameter_cd = NA,
  date_col = NA,
  value_col = NA,
  approved_col = NA,
  plot_range = c("Past year", "Calendar year"),
  plot_title = "",
  y_axis_label = "",
  flip_y = FALSE
)
}
\arguments{
\item{gw_level_dv}{data frame, daily groundwater level data. Often obtained
from \code{readNWISdv}.}

\item{parameter_cd}{If data in gw_level_dv comes from NWIS, the parameter_cd 
can be used to define the value_col.
 If the data doesn't come directly from NWIS services, this 
can be set to \code{NA},and this argument will be ignored.}

\item{date_col}{the heading of the date column. The default is \code{NA},
which the code will try to get the column name automatically.}

\item{value_col}{name of value column. The default is \code{NA},
which the code will try to get the column name automatically.}

\item{approved_col}{name of column to get provisional/approved status.}

\item{plot_range}{the time frame to use for the plot. Either "Past year" to use the
last year of data, or "Calendar year" to use the current calendar year, beginning
in January.}

\item{plot_title}{the title to use on the plot}

\item{y_axis_label}{the label used for the y-axis of the plot.}

\item{flip_y}{logical. If \code{TRUE}, flips the y axis so that the smallest number is on top.
Default is \code{FALSE}.}
}
\value{
a ggplot object with rectangles representing the historical weekly percentiles,
and points representing the historical median and daily values
}
\description{
The weekly frequency analysis is based on daily data
}
\examples{

# site <- "263819081585801"
p_code_dv <- "62610"
statCd <- "00001"
# gw_level_dv <- dataRetrieval::readNWISdv(site, p_code_dv, statCd = statCd)
gw_level_dv <- L2701_example_data$Daily
weekly_frequency_plot(gw_level_dv, 
                      date_col = "Date",
                      value_col = "X_62610_00001",
                      approved_col = "X_62610_00001_cd")
                      
weekly_frequency_plot(gw_level_dv, 
                      parameter_cd = "62610")
                      
weekly_frequency_plot(gw_level_dv, 
                      parameter_cd = "62610", 
                      flip_y = TRUE)

}
