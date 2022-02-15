The Davies distribution
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

# <img src="man/figures/Davies.png" width = "150" align="right" />

<!-- badges: start -->

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/Davies)](https://cran.r-project.org/package=Davies)
<!-- badges: end -->

# Overview

The Davies distribution is a flexible family of distributions for
non-negative observations; it is particularly suitable for right-skewed
data. Hankin and Lee (2006) set out mathematical properties of the
Davies distribution and the `Davies` package is showcased here. It is
defined in terms of its quantile function

![Q(p;c,\\lambda_1,\\lambda_2) = \\frac{Cp^{\\lambda_1}}{(1-p)^{\\lambda_2}}](https://latex.codecogs.com/png.latex?Q%28p%3Bc%2C%5Clambda_1%2C%5Clambda_2%29%20%3D%20%5Cfrac%7BCp%5E%7B%5Clambda_1%7D%7D%7B%281-p%29%5E%7B%5Clambda_2%7D%7D "Q(p;c,\lambda_1,\lambda_2) = \frac{Cp^{\lambda_1}}{(1-p)^{\lambda_2}}")

<img src="man/figures/README-fig_one-1.png" width="100%" />

<img src="man/figures/README-fig_two-1.png" width="100%" />

We may sample from this distribution using `rdavies()`:

``` r
params <- c(2,0.1,0.1)
rdavies(10,params)
#>  [1] 1.761097 2.008966 1.767981 2.020754 1.674392 2.003635 1.485477 1.980971
#>  [9] 2.253223 2.567022
```

Moments are given by
![E(X^k)=C^kB\\left(1+k\\lambda_1,1-k\\lambda_2\\right)](https://latex.codecogs.com/png.latex?E%28X%5Ek%29%3DC%5EkB%5Cleft%281%2Bk%5Clambda_1%2C1-k%5Clambda_2%5Cright%29 "E(X^k)=C^kB\left(1+k\lambda_1,1-k\lambda_2\right)")
where ![B](https://latex.codecogs.com/png.latex?B "B") is the beta
function. In the package this is given by `M()`, which is a convenience
wraper for `davies.moment()`. Numerical verification for the second
(non-central) moment:

``` r
c(mean(rdavies(1e6,params)^2),M(2,params))
#> [1] 4.273915 4.275837
```

## Estimation

The least-squares technique described in Hankin and Lee 2006 is not
implemented, but the package implements a maximum-likelihood estimate:

``` r
x <- rdavies(80,params)
p_estimate <- maximum.likelihood(x)
p_true <- params
p_estimate
#> [1] 1.95306332 0.08418046 0.11483549
(bias <- p_estimate - p_true)
#> [1] -0.04693668 -0.01581954  0.01483549
```

# Reference

Robin K. S. Hankin and Alan Lee 2006. “A new family of non-negative
distributions”. *Aust. N. Z. J. Stat*, 48(1):67-78
