\name{plotcf}
\alias{plotcf}
\title{p-value investigation}
\description{
Plots sorted p-values showing which ones would have been rejected.
}
\usage{
plotcf(y, q=0.05)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{y}{dataset}
  \item{q}{p-value of critical region}
}
\details{
Sorts p-values and plots the order statistic.  Useful for investigating
a statistical test by using it when the null hypothesis is KNOWN to be
true, just to check if the probability of rejection really is alpha.

Also can be used when H0 is wrong, showing what beta is.
}

\author{Robin K. S. Hankin}
\seealso{\code{\link{resample.ls}}}

\examples{
library(ctest)
f.H0.T <- function(n,free=5){t.test(rt(n,df=free))$p.value}
f.H0.F <- function(n,free=5){t.test(rf(n,df1=free,df2=free))$p.value}

plotcf(sapply(rep(10,100),f.H0.T))  # should reject about 5: thus
                                     # probability of a type I error is
                                     # about 0.05 (as it should be; this
                                     # is an exact test
plotcf(sapply(rep(10,100),f.H0.F))  # should reject about 80: thus
                                     # probability of a type II error is
                                     # about 0.2 for this H_A.


}
\keyword{distribution}
