\name{rstupid}
\alias{rstupid}
\title{A stupid PDF}
\description{
  a contrived PDF that cannot be closely approximated by a Davies distribution
}
\usage{
rstupid(n, a = 1, b = 2, c = 3, d = 4)
}
\arguments{
  \item{n}{Number of observations}
  \item{a}{start of first uniform bit}
  \item{b}{end of first uniform bit}
  \item{c}{start of second uniform bit}
  \item{d}{end of second uniform bit}
}
\details{
  The \code{stupid} distribution is composed of two separate uniform
  distributions: one from \eqn{a} to \eqn{b}, and one from \eqn{c} to
  \eqn{d}.  It is specifically designed to be NOT fittable to any Davies
  distribution.
  
  You could probably come up with a more stupid distribution
  if you tried
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{Davies}}}
\examples{
stupid <- rstupid(500)
fit.davies.q(stupid)
}
\keyword{distribution}

