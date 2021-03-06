% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{log_transform}
\alias{log_transform}
\alias{reverse_log_transform}
\title{Log-transforms a numeric object}
\usage{
log_transform(
  x,
  log_base = 2,
  scaling_factor = 1,
  pseudo_count = 1,
  verbose = FALSE
)

reverse_log_transform(
  x,
  log_base = 2,
  scaling_factor = 1,
  pseudo_count = 1,
  verbose = FALSE
)
}
\arguments{
\item{x}{a numeric object (i.e. vector or matrix)}

\item{log_base}{a positive number representing the base with respect to which
the logarithm will be computed. Default is 2}

\item{scaling_factor}{a positive number by which the data will be scaled, i.e.
divided prior to log computation. Default is 1, i.e. no scaling}

\item{pseudo_count}{a positive number which will be added to the possibly scaled
x prior to log computation to avoid taking the logarithm of zero. Default is 1}

\item{verbose}{suppresses all messages from this function. Default is FALSE.}
}
\value{
A log-transformed numeric object.
}
\description{
Performs log transformation on a numeric object. The data can be
scaled first if requested by dividing X by the provided scaling factor.
}
\section{Functions}{
\itemize{
\item \code{reverse_log_transform}: Reverses the log transformation, i.e \deqn{scaling_factor * (log_base^x - pseudo_count)}
}}

\author{
Avishay Spitzer
}
