\name{ozturk}
\alias{ozturk}
\title{Parameters used in a paper by Ozturk}
\description{
  A four-element vector giving the parameters used buy Ozturk.
}
\usage{data(x00m700p4)}
\references{
    A. \"{O}zt\"{u}rk and R. F. Dale 1985.  \emph{Least squares estimation
      of the parameters of the generalized lambda distribution}.
    Technometrics 27(1):84
}
\examples{
data(ozturk)
hist(rgld(100,ozturk))
}
\keyword{datasets}
