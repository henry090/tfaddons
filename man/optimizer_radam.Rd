% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimizers.R
\name{optimizer_radam}
\alias{optimizer_radam}
\title{Rectified Adam (a.k.a. RAdam)}
\usage{
optimizer_radam(
  learning_rate = 0.001,
  beta_1 = 0.9,
  beta_2 = 0.999,
  epsilon = 1e-07,
  weight_decay = 0,
  amsgrad = FALSE,
  sma_threshold = 5,
  total_steps = 0,
  warmup_proportion = 0.1,
  min_lr = 0,
  name = "RectifiedAdam",
  clipnorm = NULL,
  clipvalue = NULL,
  decay = NULL,
  lr = NULL
)
}
\arguments{
\item{learning_rate}{A `Tensor` or a floating point value. or a schedule that is
a `tf$keras$optimizers$schedules$LearningRateSchedule` The learning rate.}

\item{beta_1}{A float value or a constant float tensor. The exponential decay rate for the 1st moment estimates.}

\item{beta_2}{A float value or a constant float tensor. The exponential decay rate for the 2nd moment estimates.}

\item{epsilon}{A small constant for numerical stability.}

\item{weight_decay}{A floating point value. Weight decay for each param.}

\item{amsgrad}{boolean. Whether to apply AMSGrad variant of this algorithm from the paper
"On the Convergence of Adam and beyond".}

\item{sma_threshold}{A float value. The threshold for simple mean average.}

\item{total_steps}{An integer. Total number of training steps. Enable warmup by setting a positive value.}

\item{warmup_proportion}{A floating point value. The proportion of increasing steps.}

\item{min_lr}{A floating point value. Minimum learning rate after warmup.}

\item{name}{Optional name for the operations created when applying gradients. Defaults to "RectifiedAdam".}

\item{clipnorm}{is clip gradients by norm.}

\item{clipvalue}{is clip gradients by value.}

\item{decay}{is included for backward compatibility to allow time inverse decay of learning rate.}

\item{lr}{is included for backward compatibility, recommended to use learning_rate instead.}
}
\value{
Optimizer for use with `keras::compile()`
}
\description{
Rectified Adam (a.k.a. RAdam)
}
