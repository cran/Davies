\name{hypergeo}
\alias{hypergeo}
\title{The hypergeometric function}
\description{
The hypergeometric function as defined by Abramowicz and Stegun
}
\usage{
hypergeo(A, B, C, z, tol = 1e-06)
}
\arguments{
  \item{A}{first top parameter}
  \item{B}{second top parameter}
  \item{C}{first bottom parameter}
  \item{z}{argument}
  \item{tol}{absolute tolerance}
}
\references{Abramowicz and Stegun,
      Handbook of mathematical functions with formulas, 
      graphs and mathematical tables (AMS-55),
      1955,
      National Bureau of Standards}
\author{Robin K. S. Hankin}
\examples{
hypergeo(1,1,1,0.234)
hypergeo(1,1,1,(1:10)/10)
}
\keyword{distribution}

