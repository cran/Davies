\name{least.squares}
\alias{least.squares}
\alias{maximum.likelihood}
\title{Finds the optimal Davies distribution for a dataset}
\description{
  Finds the best-fit Davies distribution using either the least-squares
  criterion (\code{least.squares}) or maximum likelihood (\code{maximum.likelihood}).
}
\usage{
least.squares(data, do.print = FALSE, start.v = NULL)
maximum.likelihood(data, do.print = FALSE, start.v = NULL)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{data}{dataset to be fitted}
  \item{do.print}{Boolean flag with TRUE meaning print  a GFM}
  \item{start.v}{A suitable starting vector of parameters
    c(C,lambda1,lambda2).   If NULL, use start()}
}
\details{
 Uses \code{optim()}  to find the best-fit Davies distribution to a set
 of data.
}
\value{
Returns the parameters \eqn{C,\lambda_1,\lambda_2}{C,lambda1,lambda2} of
the best-fit Davies distribution to the dataset \code{data}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{davies.start}}, \code{\link{optim}},
  \code{\link{objective}}, \code{\link{likelihood}}}
\note{BUGS: can be screwed with bad value for \code{start.v}.
  maximum.likelihod() is very slow.  It  might be possible to
  improve this by using some sort of hot-start for optim().
}
\examples{
p <- c(10 , 0.1 , -0.1)
data <-rdavies(50,p)
system.time(print(maximum.likelihood(data)))
                           #observe how long this takes.
                           #The time is taken in repeated calls
                           #to pdavies(), which uses uniroot().

system.time(print(least.squares(data)))
                           #Much faster.
}
\keyword{distribution}