% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seq2seq.R
\name{sampler_greedy_embedding}
\alias{sampler_greedy_embedding}
\title{Greedy Embedding Sampler}
\usage{
sampler_greedy_embedding(embedding_fn = NULL)
}
\arguments{
\item{embedding_fn}{A optional callable that takes a vector tensor of ids (argmax ids),
or the params argument for embedding_lookup. The returned tensor will be passed to the
decoder input. Default to use tf$nn$embedding_lookup.}
}
\value{
None
}
\description{
A sampler for use during inference.
}
\details{
Uses the argmax of the output (treated as logits) and passes the result through
an embedding layer to get the next input.
}
