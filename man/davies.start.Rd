\name{davies.start}
\alias{davies.start}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{start value for Davies minimization routines}
\description{
  Gives a ``start'' value for the optimization routines.  Uses
  heuristics that seem to work.
}
\usage{
davies.start(x, threeps=c(0.1,0.5,0.9), small = 0.01) 
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{dataset to be used}
  \item{threeps}{a three-element vector representing the quantiles to be
    balanced.  The default values balance the first and ninth deciles
    and the median.  These seem to work for me pretty well; YMMV}
  \item{small}{a ``small'' value to be used for \eqn{\lambda_1}{lambda1}
  and \eqn{\lambda_1}{lambda1} because exactly zero sucks}
}
\details{
Returns a ``start'' value of the pararametes for use in one of the
Davies fitting routines maximum.likelihood() or least.squares().

Uses three heuristic methods (one assuming \eqn{\lambda_1=
  -\lambda_2}{lambda1=-lambda2}, one with \eqn{\lambda_1=0}{lambda1=0},
and one with \eqn{\lambda_2=0}{lambda2=0}).  Returns the best one of the
three, as measured by \code{objective()}.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{least.squares}} , \code{\link{maximum.likelihood}},
  \code{\link{objective}}
}
\examples{
data <- rnorm(100)^2
davies.start(data)
least.squares(data)


params <- c(10 , 0.1 , -0.1)
x <- rdavies(100 , params)
davies.start(x)

f <- function(threeps){objective(davies.start(x,threeps),x)}

(jj<-optim(c(0.1,0.5,0.9),f))
davies.start(x,jj$par)
least.squares(x)


#not bad at all.

}
\keyword{distribution}

