% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/activations.R
\name{activation_softshrink}
\alias{activation_softshrink}
\title{Softshrink}
\usage{
activation_softshrink(x, lower = -0.5, upper = 0.5)
}
\arguments{
\item{x}{A `Tensor`. Must be one of the following types: `float16`, `float32`, `float64`.}

\item{lower}{`float`, lower bound for setting values to zeros.}

\item{upper}{`float`, upper bound for setting values to zeros. Returns: A `Tensor`. Has the same type as `x`.}
}
\value{
A `Tensor`. Has the same type as `x`.
}
\description{
Soft shrink function.
}
\details{
Computes soft shrink function:
`x - lower if x < lower, x - upper if x > upper else 0`.
}
\section{Computes soft shrink function}{

`x - lower if x < lower, x - upper if x > upper else 0`.
}

