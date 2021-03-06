% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metrics_dist.R
\name{smis}
\alias{smis}
\title{scaled Mean Interval Score (sMIS)}
\usage{
smis(data, actual, lower, upper, m, level)
}
\arguments{
\item{data}{time series (only train set)}

\item{actual}{actual values (Equivalent of upper/lower)}

\item{lower}{lower bound of prediction interval}

\item{upper}{upper bound of prediction interval}

\item{m}{frequency, e.g. 12 for monthly and 4 for quarterly series}

\item{level}{level used for prediction interval construction}
}
\value{
numeric vector of length 1
}
\description{
sMIS scaled according to M4 Forecasting competition (see references)
}
\examples{
data <- tsRNN::fc_arima[key == "actual", value]
forecast <- tsRNN::fc_arima[key == "predict", value]
data_train <- data[1:(length(data) - length(forecast))]
data_test <- data[(length(data) - length(forecast) + 1):length(data)]
lower <- tsRNN::fc_arima[key == "predict", lo95]
upper <- tsRNN::fc_arima[key == "predict", hi95]

tsRNN::smis(
  data = data_train,
  actual = data_test,
  lower = lower,
  upper = upper,
  m = 4,
  level = 0.95
)

}
\references{
\itemize{
\item 	Svetunkov, I., Sagaert, Y. R. (2020). greybox: Toolbox for Model
Building and Forecasting. \url{https://cran.r-project.org/package=greybox}
\item Gneiting, T., & Raftery, A. E. (2007). Strictly proper scoring rules,
prediction, and estimation. Journal of the American Statistical Association,
102(477), 359–378. \url{https://doi.org/10.1198/016214506000001437}
\item Makridakis, S., Spiliotis, E., & Assimakopoulos, V. (2020). The M4
Competition: 100,000 time series and 61 forecasting methods. International
Journal of Forecasting, 36(1), 54–74. \url{https://doi.org/10.1016/j.ijforecast.2019.04.014}
}
}
\seealso{
Other PI accuracy measures: 
\code{\link{acd}()}
}
\concept{PI accuracy measures}
