\name{hypergeo}
\alias{hypergeo}
\alias{hypergeo2}
\alias{genhypergeo}
\alias{conhypergeo}
\title{The hypergeometric function}
\description{
The Hypergeometric and generalized hypergeometric functions as defined
by Abramowitz and Stegun.  \strong{These functions are defunct and
  will be removed altogether soon.  To evaluate hypergeometric functions, use
  the \pkg{hypergeo} package}
}
\usage{
hypergeo (A, B, C, z, tol = 1e-06, maxiter = 2000, strict=TRUE)
hypergeo2(A, B, C, z, tol = 1e-06, maxiter = 2000, strict=TRUE)
genhypergeo(U, L, z, tol = 1e-06, maxiter = 2000, strict=TRUE)
}
\arguments{
  \item{A,B,C}{Parameters for \code{hypergeo()}}
  \item{U,L}{Upper and lower vector parameters for \code{genhypergeo()}}
  \item{z}{argument}
  \item{tol}{absolute tolerance}
  \item{maxiter}{Maximum number of iterations}
  \item{strict}{Boolean, with default \code{TRUE} meaning to return
    \code{NA} if the series appears not to converge, and \code{FALSE}
    meaning to return the partial sum} 
}
\details{
  The hypergeometric function as defined by Abramowitz and Stegun,
  equation 15.1.1, page 556 is
\deqn{ {}_1F_2(a,b;c;z) =
  \sum_{n=0}^\infty\frac{(a)_n(b)_n}{(c)_n}\cdot\frac{z^n}{n!}}{[omitted;
  see PDF]}

where
\eqn{(a)_n=a(a+1)\ldots(a+n-1)=\Gamma(a+n)/\Gamma(a)}{(a)_n=Gamma(a+n)/Gamma(a)}
is the Pochammer symbol (6.1.22, page 256).

The generalized hypergeometric function appears from time to time in the
literature (eg Mathematica) as

\deqn{F(U,L;z) = \sum_{n=0}^\infty\frac{(u_1)_n(u_2)_n\ldots
  (u_i)_n}{(l_1)_n(l_2)_n\ldots (l_j)_n}\cdot\frac{z^n}{n!}}{[omitted;
  see PDF]}

where \eqn{U=\left(u_1,\ldots,u_i\right)}{U=(u_1,...,u_i)} and
\eqn{L=\left(l_1,\ldots,l_i\right)}{L=(l_1,...,l_i)} are the
\dQuote{upper} and \dQuote{lower} vectors respectively.

For the Confluent Hypergeometric function, use \code{genhypergeo()} with
length-1 vectors for arguments \code{U} and \code{V}.

For the \eqn{{}_0\!F_1}{0F1} function (ie no \dQuote{upper} arguments), use
\code{genhypergeo(NULL,L,x)}.
}
\references{Abramowitz and Stegun 1955.
  \emph{Handbook of mathematical functions with formulas, 
      graphs and mathematical tables} (AMS-55).
      National Bureau of Standards}
\author{Robin K. S. Hankin}
\note{
Abramowitz and Stegun state:

\dQuote{The radius of convergence of the Gauss hypergeometric series
\eqn{\ldots}{...} is \eqn{\left|z\right|=1}{|z|=1}} (AMS-55, section
15.1, page 556).

This reference book gives the correct radius of convergence; use the
ratio test to verify it.  Just to be absolutely specific: if
\eqn{|z|>1}, the hypergeometric series will diverge.

However, AMS-55 give a transformation: eqn 15.3.7, page 559 converts a
function of \eqn{z} to one of \eqn{1/z}.  This is used in function
\code{hypergeo2()}; note that values are coerced to complex.

\strong{The functions described here are defunct.  For the
  hypergeometric function, see function \code{hypergeo()} of the
  \pkg{hypergeo} package, which supports a wide range of transformations
  and is able to deal with a wide range of special cases of the
  parameters}

}
\examples{

\dontrun{
#  equation 15.1.3, page 556:
f1 <- function(x){-log(1-x)/x}
f2 <- function(x){hypergeo(1,1,2,x)}
f3 <- function(x){hypergeo(1,1,2,x,tol=1e-10)}
x <- seq(from = -0.6,to=0.6,len=14)
f1(x)-f2(x)
f1(x)-f3(x)  # Note tighter tolerance


# equation 15.1.7, p556:
g1 <- function(x){log(x + sqrt(1+x^2))/x}
g2 <- function(x){hypergeo(1/2,1/2,3/2,-x^2)}
g1(x)-g2(x)  # should be small 
abs(g1(x+0.1i) - g2(x+0.1i))  # should have small modulus.

# Just a random call, verified by Maple [ Hypergeom([],[1.22],0.9087) ]:
genhypergeo(NULL,1.22,0.9087)
}
}
\keyword{math}

