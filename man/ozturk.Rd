\name{ozturk}
\alias{ozturk}
\title{Parameters used in a paper by Ozturk}
\description{
  A four-element vector giving the parameters used by Ozturk.
}
\usage{data(x00m700p4)}
\references{
  A. Ozturk and R. F. Dale 1985.  \dQuote{Least squares estimation
    of the parameters of the generalized lambda distribution}.
  \emph{Technometrics} 27(1):84; see discussion under \code{expected.gld.Rd}.
}
\seealso{\code{\link{expected.gld}}}  
\examples{
data(ozturk)
hist(rgld(100,ozturk))
}
\keyword{datasets}
