\name{Davies}
\alias{Davies}
\alias{davies}
\alias{ddavies}
\alias{pdavies}
\alias{qdavies}
\alias{rdavies}
\alias{ddavies.p}
\title{The Davies distribution}
\description{\loadmathjax
  Density, distribution function, quantile function and random
  generation for the Davies distribution.
}
\usage{
 ddavies(x, params,log=FALSE)
 pdavies(x, params,log.p=FALSE,lower.tail=TRUE)
 qdavies(p, params,lower.tail=TRUE)
 rdavies(n, params)
ddavies.p(x,params,log=FALSE)
}
\arguments{
  \item{x}{quantile}
  \item{p}{vector of probabilities}
  \item{n}{number of observations.  If \code{length(n) > 1}, the length
    is taken to be the number required}
  \item{lower.tail}{logical; if \code{TRUE} (default), probabilities are
    \mjeqn{P(X\leq x)}{P[X <= x]}, otherwise \mjeqn{P(X>x)}{P[X > x]}}
  \item{log,log.p}{logical; if \code{TRUE}, probabilities are given as
    \mjseqn{\log(p)}}
  \item{params}{A three-member vector holding \mjeqn{C}{C},
    \mjeqn{\lambda_1}{lambda1} and \mjeqn{\lambda_2}{lambda2}}
}
\details{
  The Davies distribution is defined in terms of its quantile function:
  \deqn{Cp^{\lambda_1}/(1-p)^{\lambda_2}}{Cp^lambda_1/(1-p)^lambda2}

  It does not have a closed-form  probability density function or
  cumulative density function, so numerical solution is used.

  Function \code{ddavies.p()} returns the density of the Davies function
  but as a function of the quantile.
}
\value{
  Function
  \code{ddavies()} gives the density,
  \code{pdavies()} gives the distribution function,
  \code{qdavies()} gives the quantile function, and
  \code{rdavies()} generates random deviates.
}
\references{
  R. K. S. Hankin and A. Lee 2006.  \dQuote{A new family of non-negative
    distributions}  \emph{Australia and New Zealand Journal of
  Statistics}, 48(1):67--78}
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

