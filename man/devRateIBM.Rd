% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devRate_pheno.R
\name{devRateIBM}
\alias{devRateIBM}
\title{Forecast ectotherm phenology as a function of temperature and development rate models}
\usage{
devRateIBM(tempTS, timeStepTS, models, numInd = 100, stocha, timeLayEggs = 1)
}
\arguments{
\item{tempTS}{The temperature time series (a vector).}

\item{timeStepTS}{The time step of the temperature time series (a numeric in days).}

\item{models}{The models for development rate (a list with objects of class nls).}

\item{numInd}{The number of individuals for the simulation (an integer).}

\item{stocha}{The standard deviation of a Normal distribution centered on
development rate to create stochasticity among individuals (a numeric). Either
a single number (same stochasticity for all stages) or a vector of length
corresponding to the number of models used (different stochasticity for the
phenological stages).}

\item{timeLayEggs}{The delay between emergence of adults and the time where
females lay eggs in time steps (a numeric).}
}
\value{
A list with three elements: the table of phenology for each individual,
   the models used (nls objects), and the time series for temperature.
}
\description{
Forecast ectotherm phenology as a function of temperature and development rate models
}
\examples{
data(exTropicalMoth)
forecastTsolanivora <- devRateIBM(
   tempTS = rnorm(n = 100, mean = 15, sd = 1),
   timeStepTS = 1,
   models = exTropicalMoth[[2]],
   numInd = 100,
   stocha = c(0.015, 0.005, 0.01),
   timeLayEggs = 1)
}
