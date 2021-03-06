% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seq2seq.R
\name{decoder_beam_search_state}
\alias{decoder_beam_search_state}
\title{Beam Search Decoder State}
\usage{
decoder_beam_search_state(
  cell_state,
  log_probs,
  finished,
  lengths,
  accumulated_attention_probs
)
}
\arguments{
\item{cell_state}{cell_state}

\item{log_probs}{log_probs}

\item{finished}{finished}

\item{lengths}{lengths}

\item{accumulated_attention_probs}{accumulated_attention_probs}
}
\value{
None
}
\description{
Beam Search Decoder State
}
