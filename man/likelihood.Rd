\name{likelihood}
\alias{likelihood}
\alias{neg.log.likelihood}
\title{likelihood for the Davies distribution}
\description{
  Likelihood of observing \code{data}, on the hypothesis of
  their coming from a Davies distribution of parameters \code{params}.
  
  Function \code{neg.log.likelihood()} gives minus the loglikelihood
}
\usage{
likelihood(params, data)
}
\arguments{
  \item{params}{Parameters of the Davies distribution}
  \item{data}{dataset for which the likelihood is computed}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{Davies}}}

\examples{
p1 <- c(10,0.1, 0.1)
p2 <- c(10,0.4, 0.1)
data <- rdavies(100,p1)
likelihood(p1,data)
likelihood(p2,data)                 #should be smaller.
neg.log.likelihood(p1,rstupid(100)) #should be large negative.
}
\keyword{distribution}
