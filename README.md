
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dukecvd

<!-- badges: start -->
<!-- badges: end -->

## Overview

The goal of dukecvd is to generate visualizations with Duke’s official
suite of colors in a color blind friendly way. This package is
integrated with ggplot2 and its visualization tools.

## Installation

``` r
# Install dukecvd directly:
install.packages("dukecvd")

# Or alternatively, install development version from GitHub
# install.packages("devtools")
devtools::install_github("aidangildea/dukecvd")
```

## Usage

This package is fully integrated with ggplot2, and therefore, allows you
to customize several visualization features. By adding aesthetic
functions such as `theme_duke()` and `scale_color_duke()` to your
visualizations, you can easily implement Duke official colors in a color
blind friendly way.

For further information on how to use ggplot2, please visit its [GitHub
repository](https://github.com/tidyverse/ggplot2).

## Example

First, create a standard ggplot2 visualization. In this example, we will
use a scatter plot.

``` r
library(ggplot2)
library(dukecvd)
plot <- ggplot2::ggplot(iris, ggplot2::aes(Sepal.Length, Sepal.Width)) +
  ggplot2::geom_point(ggplot2::aes(colour = Species)) +
  ggplot2::labs(title = "Title", caption = "Caption", x = "X Var", y = "Y Var")

plot
```

<img src="man/figures/README-plot-1.png" width="100%" />

Then, simply convert your visualization to Duke official colors by
calling `theme_duke()`.

``` r
plot + theme_duke()
```

<img src="man/figures/README-themeduke-1.png" width="100%" />

## Questions

For further questions about this package and its use, please reach out
to Aidan Gildea at <aidan.gildea@duke.edu>.
