\name{fit.davies.p}
\alias{fit.davies.p}
\alias{fit.davies.q}
\title{Fits and plots Davies distributions to datasets}
\description{
  A newbie wrapper (and pretty-printer) for \code{maximum.likelihood()} and
  \code{least.squares()}.  Draws an empirical quantile function (\code{fit.davies.p()}) or PDF (\code{fit.davies.q()}) and the dataset
}
\usage{
fit.davies.p(x , print.fit=FALSE, use.q=TRUE , params=NULL, small=1e-5 , ...)
fit.davies.q(x , print.fit=FALSE, use.q=TRUE , params=NULL, ...)
}
\arguments{
  \item{x}{dataset to be fitted and plotted}
  \item{print.fit}{Boolean with \code{TRUE} meaning print details of the fit}
  \item{use.q}{Boolean with \code{TRUE} meaning use \code{least.squares()}
    (rather than \code{maximum.likelihood()})}
  \item{params}{three-element vector holding the three parameters of the
    davies dataset.  If \code{NULL}, determine the parameters using the method
    indicated by \code{use.q}}
  \item{small}{small positive number showing range of quantiles to plot}
  \item{\dots}{Additional parameters passed to \code{plot()}}
}
\value{If \code{print.fit} is \code{TRUE}, return the optimal parameters}
\author{Robin K. S. Hankin}
\seealso{\code{\link{least.squares}} ,  \code{\link{maximum.likelihood}}
}

\examples{
  fit.davies.q(rchisq(100,1))
  fit.davies.p(exp(rnorm(100))) 

  data(x00m700p4)
  fit.davies.q(x00m700p4)
}
\keyword{distribution}
