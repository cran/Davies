\name{Gld}
\alias{Gld}
\alias{gld}
\alias{dgld}
\alias{dgld.p}
\alias{pgld}
\alias{qgld}
\alias{rgld}
\title{The Generalized Lambda Distribution}
\description{
  Density, distribution function, quantile function and random
  generation for the Generalized Lambda Distribution
}
\usage{
dgld(x, params)
dgld.p(x, params)
pgld(q, params)
qgld(p, params)
rgld(n, params)
}
\arguments{
  \item{x,q}{vector of quantiles}
  \item{p}{vector of probabilities}
  \item{n}{In function \code{rgld()}, the number of observations.  If \code{length(n)> 1}, the
    length is taken to be the number required}
\item{params}{vector of parameters: \eqn{params[1]==lambda1} et seq}
}
\value{
  \code{dgld} gives the density,
  \code{dgld.p} gives the density in terms of the quantile,
  \code{pgld} gives the distribution function,
  \code{qgld} gives the quantile function, and
  \code{rgld} generates random deviates.
}
\details{
  The Generalized Lambda distribution has quantile function
  \deqn{f(x)=\lambda_1 +(p^{\lambda_3} - (1-p)^{\lambda_4})/\lambda_2}{f(x)=lambda1 +(p^lambda3 - (1-p)^lambda_4)/lambda_2}
}
\seealso{
\code{\link{Davies}}, \code{\link{expected.gld}}
}
\references{
  \itemize{
    \item
    M. J. Wichura 1988. \emph{Algorithm AS 241: The Percentage Points of
      the Normal Distribution}.  Applied Statistics, \bold{37}, 477--484.
    \item
    A. \"{O}zt\"{u}rk and R. F. Dale 1985.  \emph{Least squares estimation
      of the parameters of the generalized lambda distribution}.
    Technometrics 27(1):84
    }
}
\examples{
params <- c(4.114,0.1333,0.0193,0.1588)  #taken straight from some paper

gld.rv <- rgld(100,params)

hist(gld.rv)
fit.davies.q(gld.rv)  #remember the Davies distn has 3 DF and the GLD 4...
}
\keyword{distribution}
