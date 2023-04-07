
# duke

<!-- badges: start -->

[![R-CMD-check](https://github.com/aidangildea/duke/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/aidangildea/duke/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Overview

**duke** allows users to generate visualizations with Duke’s official
suite of colors in a color blind friendly way. By using it alongside
**ggplot2**, you can easily promote accessibility in the Duke community
and beyond.

## Installation

You can install the official version of `duke` from CRAN with:

``` r
# Install duke directly:
install.packages("duke")
```

Or alternatively, you can install the development version from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("aidangildea/duke")
```

## Usage

This package is fully integrated with ggplot2, and therefore, allows you
to customize several visualization features. Aesthetic functions such as
[`theme_duke()`](https://aidangildea.github.io/duke/articles/theme_duke_vignette.html)
and
[`scale_color_duke()`](https://aidangildea.github.io/duke/articles/scale_duke_color_discrete_vignette.html)
quickly make your graphs visually pleasing and accessible to your
audience.

For further information on how to use ggplot2, please visit its [GitHub
repository](https://github.com/tidyverse/ggplot2).

## Example

By using **duke** functions, you can easily convert your visualizations
to Duke official colors.

Create visualizations using **ggplot2** package.

``` r
library(ggplot2)
library(duke)

plot1 <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point(aes(colour = Species)) +
  labs(
    title = "Sepal Length vs. Sepal Width",
    caption = "Data sourced from iris in datasets package.",
    x = "Sepal Length", 
    y = "Sepal Width"
  )

plot2 <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point(aes(color = Sepal.Length)) +
  labs(
    title = "Sepal Length vs. Sepal Width", 
    caption = "Data sourced from iris in datasets package.", 
    x = "Sepal Length", 
    y = "Sepal Width"
  )
```

Then, by pairing them with functions from this package, you can convert
them into Duke-branded and colorblind-friendly versions.

``` r
plot1 +
  theme_duke() +
  scale_duke_color_discrete()
```

<img src="man/figures/README-themeduke-1.png" width="100%" />

``` r

plot2 +
  theme_duke() +
  scale_duke_continuous()
```

<img src="man/figures/README-themeduke-2.png" width="100%" />

## Questions

For further questions about this package and its use, please open an
issue.
