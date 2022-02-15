\name{least.squares}
\alias{least.squares}
\alias{maximum.likelihood}
\title{Finds the optimal Davies distribution for a dataset}
\description{
  Finds the best-fit Davies distribution using either the least-squares
  criterion (\code{least.squares()}) or maximum likelihood
  (\code{maximum.likelihood()})
}
\usage{
least.squares(data, do.print = FALSE, start.v = NULL)
maximum.likelihood(data, do.print = FALSE, start.v = NULL)
}
\arguments{
  \item{data}{dataset to be fitted}
  \item{do.print}{Boolean with \code{TRUE} meaning print a GFM}
  \item{start.v}{A suitable starting vector of parameters
    \code{c(C,lambda1,lambda2)}, with default \code{NULL} meaning to
    use \code{start()}}
}
\details{
  Uses \code{optim()} to find the best-fit Davies distribution to a set
  of data.

  \strong{Function \code{least.squares()} does not match that of Hankin
    and Lee 2006}.

}
\value{
  Returns the parameters \eqn{C,\lambda_1,\lambda_2}{C,lambda1,lambda2} of
  the best-fit Davies distribution to the dataset \code{data}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{davies.start}}, \code{\link{optim}},
  \code{\link{objective}}, \code{\link{likelihood}}}

\note{BUGS:

  Function \code{least.squares()} does not use the same methodology of
  Hankin and Lee 2006, and its use is discouraged pending implentation.
  
  Quite apart from that, it can be screwed with bad value for
  \code{start.v}.  Function \code{maximum.likelihod()} can be very slow.
  It might be possible to improve this by using some sort of hot-start
  for \code{optim()}.  }

\examples{

  p <- c(10 , 0.1 , 0.1)
  d <- rdavies(10,p)

  maximum.likelihood(d)  # quite slow
  least.squares(d)       # much faster but not recommended
}
\keyword{distribution}
