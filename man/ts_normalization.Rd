% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ts_normalization.R
\name{ts_normalization}
\alias{ts_normalization}
\title{Normalize univariate timeseries}
\usage{
ts_normalization(
  data,
  length_val,
  length_test,
  value_col = "value",
  joined = TRUE,
  metrics = FALSE
)
}
\arguments{
\item{data}{univariate time series (data.frame / data.table)}

\item{length_val}{length for validation set}

\item{length_test}{length for test set}

\item{value_col}{column(s) to normalize, searched by starting pattern. E.g.
\code{value_col = "index"} will catch column "index" and "index_2" but not
"2_index"}

\item{joined}{joined normalization for same pattern? TRUE by default. See
section "Joined value columns" for details}

\item{metrics}{return data only or list of data and metrics?}
}
\value{
Depending on \code{metrics}, processed DT object or list of "data" and
"metrics" (center and scale)
}
\description{
Normalize univariate timeseries
}
\section{Joined value columns}{

Joined means to normalize all columns detected by pattern with the one column
exactly matching. Watch out for this condition to hold if \code{joined = TRUE}.\cr
\code{joined} is of particular use for lagged time series. E.g. column "value"
should be used to normalize not only column "value" but also "value_lag1" etc.
}

\examples{
# without metrics
DT_norm <- ts_normalization(tsRNN::DT_apple, 10, 10); DT_norm

# with metrics
ts_normalization(tsRNN::DT_apple, 10, 10, metrics = TRUE)

}
