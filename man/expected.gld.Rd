\name{expected.gld}
\alias{expected.gld}
\alias{expected.gld.approx}
\title{expected value of the Generalized Lambda Distribution}
\description{Returns the expected value of the Generalized
  Lambda Distribution}
\usage{
expected.gld(n=1, i=1, params)
expected.gld.approx(n=1, i=1, params)
}
\arguments{
  \item{n}{Number of observations}
  \item{i}{Order statistic: \eqn{i=1}{i=1} means the smallest of
    \eqn{n}, and \eqn{n=i} means the largest}
  \item{params}{The four parameters of a GLD distribution}
}
\details{
  \code{expected.gld} and \code{expected.approx} return the exact and
  approximate values of the expected value of a Generalized Lambda
  Distribution RV.
  
  Exploits the fact that the \code{gld} quantile function is the sum of
  a constant and two \code{davies} quantile functions}

\references{A. Ozturk and R. F. Dale, \dQuote{Least squares
  estimation of the parameters of the generalized lambda distribution},
  Technometrics 1985, 27(1):84 [it does not appear to be possible, as of
  R-2.9.1, to render the diacritic marks in the first author's names in
  a nicely portable way]
}
\seealso{\code{\link{Gld}} , \code{\link{expected.value}}}
\examples{
params <- c(4.114,0.1333,0.0193,0.1588)
mean(rgld(1000,params))
expected.gld(n=1,i=1,params)
expected.gld.approx(n=1,i=1,params)


f <- function(n){apply(matrix(rgld(n+n,params),2,n),2,min)}
#ie f(n) gives the smaller of 2 rgld RVs, n times.

mean(f(1000))
expected.gld(n=2,i=1,params)
expected.gld.approx(n=2,i=1,params)

plot(1:100,expected.gld.approx(n=100,i=1:100,params)-expected.gld(n=100,i=1:100,params))
# not bad, eh? ....yyyeeeeesss, but the parameters given by Ozturk give
# an almost zero second derivative for d(qgld)/dp, so the good agreement
# isn't surprising really.  Observe that the error is minimized at about
# p=0.2, where the point of inflection is.
}
\author{Robin K. S. Hankin}
\keyword{distribution}
