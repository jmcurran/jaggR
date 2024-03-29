% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print.summary.mcmc.R
\name{print.summary.mcmc}
\alias{print.summary.mcmc}
\title{S3 print method for objects of type summary.mcmc}
\usage{
\method{print}{summary.mcmc}(
  x,
  digits = max(3, .Options$digits - 3),
  runDetails = FALSE,
  means = FALSE,
  quantiles = TRUE,
  ...
)
}
\arguments{
\item{x}{an object of type \code{summary.mcmc}.}

\item{digits}{The number of digits to print.}

\item{runDetails}{if \code{TRUE} print the details of the sampling.}

\item{means}{if \code{TRUE} print the posterior means.}

\item{quantiles}{if \code{TRUE} print the posterior quantiles.}

\item{...}{other arguments passed to \code{print}.}
}
\value{
x is invisibly returned
}
\description{
This function overrides the hidden method in the \code{coda} package
that provides a print method for the output of the \code{\link{coda}{summary}}
function. The idea is to be able to suppress some of the output so that
only the summary statistics of interest are shown. This is primarily used in the
preparation of the book.
}
