\name{objective}
\alias{objective}
\alias{objective.approx}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{The objective function for fitting the Davies distribution}
\description{The ``distance"   %"
  of a dataset from a particular Davies distribution
}
\usage{
objective(params, dataset)
objective.approx(params, dataset)
}
\arguments{
  \item{params}{A three-member vector holding~\eqn{C}{C} ,
    \eqn{\lambda_1}{lambda1} and \eqn{\lambda_2}{lambda2}}
  \item{dataset}{The dataset to be considered}
}
\details{
Used by the fit.davies.p() and fit.davies.q() functions.
}
\value{
  \code{objective} returns the ``distance" of a  %"
  dataset from a particular
  Davies distribution as measured by the sums of the squares of the
  differences between observed (\code{dataset} and
  expected (\code{expected.value()}) values.

  \code{objective.approx()} uses \code{expected.approx()} rather than
  \code{expected()} to calculate expectations, as per equation 6.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{fit.davies.p}}, \code{\link{fit.davies.q}}}
\examples{
params <- c(10,0.1,-0.1)
x <- rdavies(100,params)
objective(params,x)
objective.approx(params,x)

objective(least.squares(x),x)
objective(davies.start(x),x)


  }
\keyword{distribution}

