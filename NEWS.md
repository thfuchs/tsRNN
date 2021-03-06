## tsRNN 0.2.2

### Breaking Changes
* Bug in `smis()` calculation. Function compared prediction interval with prediction instead of actual values. Argument `data` now requires train set only and `actual` equivalent to lower/upper bounds. Argument `forecast` and `h` therefore removed.
* Bug in `mase()` calculation. Fixed scaling for forecast horizons not immediately following the train set, e.g. when evaluating only on `h = 5:6`. Therefore changed arguments to 
  * `data` for train set
  * `actual` for actual values, the equivalent of forecast values
  * `forecast` for predictions
* The arguments are finally consistent across all metrics

### Minor Changes
* sMIS and MASE fixes with direct impact on `cv_arima`, `cv_baselines` and `tune_keras_rnn_eval`

## tsRNN 0.2.1

### Breaking Changes
* Finished function `tune_keras_rnn_eval` incl. internal argument checks, unit testing and examples
* Renamed argument `multiple_h` to `h` in following functions:
  - `cv_arima`
  - `cv_baselines`
  - `tune_keras_rnn_eval`
* Fixed `smis` calculation for differing forecast horizons. Directly affecting output of `cv_arima`, `cv_baselines` and `tune_keras_rnn_eval`

# tsRNN 0.2.0

### New Features
* Created `parse_tf_version` to get TensorFlow version

### Minor Changes
* (Finished) unit testing by tinytest
* Created internal function `check_cv_setting` for automated check of `cv_setting` in functions including cross-validation
* Enhanced functions with (better) intenal argument checks. `keras_rnn`-function family in particular
* Enhanced functions with examples
* Reconstruct metrics (metrics_dist and metrics_point) documentation
* Remove documentation of internal utils functions

## tsRNN 0.1.4

### Important Fix
* `predict_baselines`, `predict_arima`, `tune_keras_rnn_bayesoptim`, `tune_keras_rnn_predict`  
  All functions checked id column for class numeric. Fixed bug to check for class character

### Minor Changes
* `tune_keras_rnn_bayesoptim` Change bayes optimization iterations from 50 to 30
* `tune_keras_rnn_bayesoptim` and `tune_keras_rnn_predict`: Fix resample naming once purrr loop finished

## tsRNN 0.1.3

Splitting `tune_keras_rnn`

### New Features
* `tune_keras_rnn_bayesoptim`  
  tuning process by Bayesian Optimization
* `tune_keras_rnn_predict`  
  Train and forecast based on tuning parameters
* `tune_keras_rnn_eval`  
  evaluation of trained models

## tsRNN 0.1.2

### Minor Fixes
* `tune_keras_rnn` development of grid search for PI dropout rate finished
* `py_dropout_model` slight bug fixed
* `keras_rnn` enhanced by "optimizer" argument

## tsRNN 0.1.1

### Minor Fixes
* `predict_arima` and `predict_baselines`: Now using `stats::window` for `subset.ts`

# tsRNN 0.1.0

First (official) release of package tsRNN (former fcf) for time series recurrent neural network training and estimation

### New Features
* `check_acf`  
  Check for autocorrelation (Ljung-Box tests for 8, 12 and 16 lags)
* `forecast_baseline`  
  Baseline models to get benchmark results for advanced models
* `keras_rnn`  
  Train Recurrent Neural Network with Gated Recurrent Unit (GRU) or Long-Short Term Memory (LSTM) using Keras framework
* `acd`  
  Absolute coverage difference (ACD)
* `smis`  
  Scaled Mean Interval Score
* `mase`  
  Mean Absolute Scaled Error (MASE)
* `mape`  
  Mean Absolute Percentage Error (MAPE)
* `smape`  
  symmetric Mean Absolute Percentage Error (sMAPE)
* `plot_baselines`  
  Plot Forecasts by baseline methods
* `plot_baselines_samples`  
  Plot cross validated samples of forecasts by baseline methods
* `plot_prediction`  
  Plot timeseries and forecast for single split and company
* `plot_prediction_samples`  
  Plot multiple splits from list with forecast results
* `predict_arima`  
  Forecast the next n steps by ARIMA for each split
* `predict_baselines`  
  Prediction and evaluation for baseline models including cross validation
* `predict_keras_rnn`  
  Prediction and evaluation for rnn models
* `py_dropout_model`  
  Change dropout rate in recurrent layer or dropout layer of trained model (python wrapper)
* `ts_nn_preparation`  
  Timeseries data preparation for neural network Keras models
* `ts_normalization`  
  Normalize univariate timeseries
* `tune_keras_rnn`  
  Tune recurrent neural network with Keras functional API and Bayes-Optimization and select best performing model
