% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_ops.R
\name{crf_forward}
\alias{crf_forward}
\title{CRF forward}
\usage{
crf_forward(inputs, state, transition_params, sequence_lengths)
}
\arguments{
\item{inputs}{A [batch_size, num_tags] matrix of unary potentials.}

\item{state}{A [batch_size, num_tags] matrix containing the previous alpha values.}

\item{transition_params}{A [num_tags, num_tags] matrix of binary potentials. This
matrix is expanded into a [1, num_tags, num_tags] in preparation for the broadcast
summation occurring within the cell.}

\item{sequence_lengths}{A [batch_size] vector of true sequence lengths.}
}
\value{
new_alphas: A [batch_size, num_tags] matrix containing the new alpha values.
}
\description{
Computes the alpha values in a linear-chain CRF.
}
\details{
See http://www.cs.columbia.edu/~mcollins/fb.pdf for reference.
}
