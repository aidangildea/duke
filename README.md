
<!-- README.md is generated from README.Rmd. Please edit that file -->

# duke

<!-- badges: start -->
<!-- badges: end -->

## Overview

**duke** allows users to generate visualizations with Duke’s official
suite of colors in a color blind friendly way. By using it alongside
**ggplot2**, you can easily promote accessibility in the Duke community
and beyond.

## Installation

``` r
# Install duke directly:
install.packages("duke")

# Or alternatively, install development version from GitHub
# install.packages("devtools")
devtools::install_github("aidangildea/duke")
```

## Usage

This package is fully integrated with ggplot2, and therefore, allows you
to customize several visualization features. Aesthetic functions such as
[`theme_duke()`](https://aidangildea.github.io/duke/articles/theme_duke_vignette.html)
and
[`scale_color_duke()`](https://aidangildea.github.io/duke/articles/scale_duke_discrete_vignette.html)
quickly make your graphs visually pleasing and accessible to your
audience.

For further information on how to use ggplot2, please visit its [GitHub
repository](https://github.com/tidyverse/ggplot2).

## Example

First, create a standard ggplot2 visualization. In this example, we will
use a scatter plot.

``` r
library(ggplot2)
library(duke)

plot <- ggplot2::ggplot(iris, ggplot2::aes(Sepal.Length, Sepal.Width)) +
  ggplot2::geom_point(ggplot2::aes(colour = Species)) +
  ggplot2::labs(title = "Title", caption = "Caption", x = "X Var", y = "Y Var")

plot
```

<img src="man/figures/README-plot-1.png" width="100%" />

Then, simply convert your visualization to Duke official colors by
calling `theme_duke()` and `scale_duke_discrete`.

``` r
plot + 
  theme_duke() +
  scale_duke_discrete()
#> New names:
#> • `colour` -> `colour...1`
#> • `colour` -> `colour...3`
```

<img src="man/figures/README-themeduke-1.png" width="100%" />

## Questions

For further questions about this package and its use, please reach out
to Aidan Gildea at <aidan.gildea@duke.edu>.
