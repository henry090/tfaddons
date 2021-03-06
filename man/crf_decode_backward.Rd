% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_ops.R
\name{crf_decode_backward}
\alias{crf_decode_backward}
\title{CRF decode backward}
\usage{
crf_decode_backward(inputs, state)
}
\arguments{
\item{inputs}{A [batch_size, num_tags] matrix of backpointer of next step (in time order).}

\item{state}{A [batch_size, 1] matrix of tag index of next step.}
}
\value{
new_tags: A [batch_size, num_tags] tensor containing the new tag indices.
}
\description{
Computes backward decoding in a linear-chain CRF.
}
