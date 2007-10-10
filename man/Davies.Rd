\name{Davies}
\alias{Davies}
\alias{davies}
\alias{ddavies}
\alias{pdavies}
\alias{qdavies}
\alias{rdavies}
\alias{ddavies.p}
\title{The Davies distribution}
\description{
  Density, distribution function, quantile function and random
  generation for the Davies distribution
}
\usage{
 ddavies(x, params)
 pdavies(x, params)
 qdavies(p, params)
 rdavies(n, params)
ddavies.p(x,params)
}
\arguments{
  \item{x}{quantile}
  \item{p}{vector of probabilities}
  \item{n}{number of observations.  If \code{length(n) > 1}, the length
    is taken to be the number required}
  \item{params}{A three-member vector holding~\eqn{C}{C} ,
    \eqn{\lambda_1}{lambda1} and~\eqn{\lambda_2}{lambda2}}
}
\details{
  The Davies distribution is defined in terms of its quantile function:
  \deqn{Cp^{\lambda_1}(1-p)^\lambda_2}{Cp^lambda_1/(1-p)^lambda2}

  It does not have a closed-form  probability density function or
  cumulative density function, so numerical solution is used.
}
\value{
  \code{ddavies} gives the density,
  \code{pdavies} gives the distribution function,
  \code{qdavies} gives the quantile function, and
  \code{rdavies} generates random deviates.
}
\references{draft MS available from the author on request}
\author{Robin K. S. Hankin}
\seealso{\code{\link{Gld}}, \code{\link{fit.davies.p}},
  \code{\link{least.squares}}, \code{\link{skewness}}}

\examples{
params <- c(10,0.1,0.1)
x <- seq(from=4,to=20,by=0.2)
p <- seq(from=1e-3,to=1-1e-3,len=50)

rdavies(n=5,params)
least.squares(rdavies(100,params))
plot(pdavies(x,params))


plot(p,qdavies(p,params))
plot(x,ddavies(x,params),type="b")

}
\keyword{distribution}

