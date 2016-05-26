\name{davies.moment}
\alias{davies.moment}
\alias{kurtosis}
\alias{skewness}
\alias{expected.value}
\alias{expected.value.approx}
\alias{mu}
\alias{variance}
\alias{M}
\title{Moments of the Davies distribution}
\description{
  Moments of order statistics of random variables drawn from a Davies
  distribution 
} 
\usage{
davies.moment(n=1 , i=1 , order=1 , params)
M(order,params)
mu(params)
expected.value(n,i,params)
expected.value.approx(n,i,params)
variance(params)
skewness(params)
kurtosis(params)
}
\arguments{
  \item{params}{A three-member vector holding \eqn{C},
    \eqn{\lambda_1}{lambda1} and \eqn{\lambda_2}{lambda2}}
  \item{n}{The number of observations}
  \item{i}{Return information about the \eqn{i}-th order statistic (ie
    \eqn{i=1} means the smallest, \eqn{i=n} means the biggest)}
  \item{order}{The order (eg order=2 gives the square)}
}
\details{
  Function \code{davies.moment(n,i,order=r)} gives the \eqn{r}-th moment of the
  \eqn{i}-th order statistic of \eqn{n} observations.  The following
  aliases are just newbie wrappers with \eqn{n=i=1} (ie moments of one
  observation from a Davies distribution):
  \itemize{
    \item \code{M()} gives the \eqn{r}-th moment for \eqn{n=i=1}
    \item \code{mu()} gives the first moment of a Davies distribution
    (ie the mean)
    \item \code{variance()} gives the second \emph{central} moment of a Davies
    distribution
    \item \code{skewness()} gives the normalized skewness of a Davies
    distribution
    \item \code{kurtosis()} gives the normalized kurtosis of a Davies
    distribution
    }
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{expected.value}}, \code{\link{expected.gld}}}
\examples{
params <- c(10,0.1,0.1)
davies.moment(n=100,i=99,2,params) # ie the second moment of the 99th smallest
                            # observation of 100 drawn from a Davies
                            # distribution with parameters p


mean(rdavies(1e6,params))-mu(params)

#now reproduce the S-K graph:

f <- function(x,y){c(skewness(c(1,x,y)),kurtosis(c(1,x,y)))}
g <- function(j,vector,pp,qq=1){points(t(sapply(vector,f,y=j)),type="l",col="black",lty=qq)}

vector <- c((0:300)/100 , (0:300)/10000 , seq(from=3,to=10,len=100))
vector <- sort(unique(vector))

plot(t(sapply((0:10)/10,f,y=0)),
       xlim=c(-3,3),ylim=c(0,10),
       type="n",xlab="skewness",ylab="kurtosis")
g(0.001,vector,"red",qq=1)
g(0.01,vector,"yellow",qq=2)
g(0.02,vector,"green",qq=3)
g(0.05,vector,"blue",qq=4)
g(0.1 ,vector,"purple",qq=5)
g(0.14,vector,"black",qq=6)

x <- seq(from=-3,to=3,len=30)
points(x,x^2+1,type="l",lwd=2)

leg.txt <- expression(lambda[2]==0.001,
        lambda[2]==0.01,lambda[2]==0.02,lambda[2]==0.05,
        lambda[2]==0.1,lambda[2]==0.14)
legend(-1.1,10,leg.txt,col="black",lty=1:6)
}
\keyword{distribution}
