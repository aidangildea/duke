
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dukecvd

<!-- badges: start -->
<!-- badges: end -->

The goal of dukecvd is to generate Duke official color blind friendly
visualizations.

## Installation

You can install the development version of dukecvd from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("aidangildea/dukecvd")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dukecvd)
## basic example code
```

Sample visualization:

``` r
plot <- ggplot2::ggplot(iris, ggplot2::aes(Sepal.Length, Sepal.Width)) +
  ggplot2::geom_point(ggplot2::aes(colour = Species)) +
  ggplot2::labs(title = "This Title is in Duke Royal Blue!", caption = "This caption is in Duke Navy Blue!", x = "This is copper!", y = "This is Persimmon!")

plot + theme_duke()
```

<img src="man/figures/README-cars-1.png" width="100%" />
