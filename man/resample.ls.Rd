\name{resample.ls}
\alias{resample.ls}
\alias{resample.ml}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Parametric resampling from a Davies distribution}
\description{
  Carries out parametric resampling on the null of the dataset
  being drawn from a Davies distribution}
\usage{
resample.ls(data, n = 99)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{data}{dataset to be resampled}
  \item{n}{number of trials to be carried out}
}
\details{
Carries out parametric resampling.  Essentially fits a Davies
distribution to \code{data}, determines an error for this set of
parameters, then draws n `ghost' datasets drawn from a Davies
distribution
with this set of optimized parameters.  Comparing the original error
with the distribution of `ghost' errors allows one to assess how close
to a Davies distribution the original dataset (\code{data}) was.
}
\value{
Returns as list with three components:
  \item{errors}{A vector of length \code{n} corresponding to the `ghost' errors}
  \item{statistic}{Error of the original dataset from the optimal fit
    Davies distribution}
  \item{p-value}{The p-value of this.  Will be \code{runif()} if
    \code{data} is in fact drawn from a Davies distribution}
}
\references{W. H. Press and others, Numerical recipes: the art of
  scientific computing, 1989, Cambridge University Press}
\author{Robin K. S. Hankin}

\examples{
hist(resample.ls(rnorm(50)^2)$errors)
fit.davies.q(resample.ls(rnorm(80)^2)$errors)
}
\keyword{distribution}

