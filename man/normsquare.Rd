\name{normsquare}
\alias{normsquare}
\alias{do.normsquare}
\alias{do.many.normsquare}
\alias{lognorm}
\alias{do.lognorm}
\alias{do.many.lognorm}
\alias{gld.ozturk}
\alias{do.gld.ozturk}
\alias{do.many.gld.ozturk}
\title{Square normal distribution}
\description{
  A suite of functions to analyze  random
  variables (eg \eqn{X^2}{X^2}, \eqn{\exp(X)}{exp(X)} with
  \eqn{X\sim\rm Norm(0,1)}{X~Norm(0,1)}; and GLD) in terms
  of the Davies distribution
}
\usage{
normsquare(n)
do.normsquare(n,m)
do.many.normsquare(vector,times)
lognorm(n)
do.lognorm(n,m)
do.many.lognorm(vector,times)
gld.ozturk(n)
do.gld.ozturk(n,m)
do.many.gld.ozturk(vector,times)
}
\arguments{
  \item{n}{size of random sample}
  \item{m}{How often to carry out the resampling process}
  \item{vector}{vector of "n"s}
  \item{times}{how many resamplings to do}
}
\details{
  \code{lognorm} gives p-values by parametrically resampling from a
  lognormal distribution
  \code{normsquare} gives p-values by parametrically resampling from a
  square normal distribution
  \code{gld.ozturk} gives p-values by parametrically resampling from a
  gld distribution
  \code{do.lognorm} is a wrapper for \code{lognorm}
  \code{do.normsquare} is a wrapper for \code{normsquare}
  \code{do.gld.ozturk} is a wrapper for \code{gld.ozturk}
  \code{do.many.lognorm} is a wrapper for \code{do.lognorm} used for table N
  \code{do.many.normsquare} is a wrapper for \code{do.normsquare} used for
  table N
  \code{do.manygld.ozturk} is a wrapper for \code{do.gld.ozturk} used for
  table N.
}
\author{Robin K. S. Hankin}
\note{\code{do.many.normsquare} is very slow for large values of n.
}
\examples{
 do.many.normsquare(c(20,30),4)

#carries out resampling on a
#square-normal random dataset of size 20 and 30, four times.
#Takes a long time.

}
  \keyword{distribution}

