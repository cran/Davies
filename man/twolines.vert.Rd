\name{twolines.vert}
\alias{twolines.vert}
\title{Order statistic comparison}
\description{
Plots two lines and shades the bit in between them
}
\usage{
twolines.vert(p, y1, y2, ...)
}
\arguments{
  \item{p}{vector of quantiles}
  \item{y1}{First set of ordinates}
  \item{y2}{Second set of ordinates}
  \item{...}{Extra arguments, passed to \code{segments()}, for
    the vertical lines}
}
\details{
Plots p against y1, and p against y2, and shades the bit in between
using vertical lines.  This is useful for comparing two order statistics.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{Davies}},\code{\link{qqplot}}}

\examples{
twolines.vert(1:100,sort(rnorm(100)),sort(rnorm(100)))
params <- c(10 , 0.1 , -0.1)
twolines.vert(1:100 , sort(rdavies(100,params)) , sort(rdavies(100,params)))
}
\keyword{distribution}
