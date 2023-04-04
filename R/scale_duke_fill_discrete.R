#' Title
#'
#' @param ... Arguments passed on to `discrete_scale`.
#' @param na.value Color used for NA values
#' @param guide the name used to create the guide. See [`guides()`](https://ggplot2.tidyverse.org/reference/guides.html) for more info.
#' @param aesthetics String or vector of strings detailing what aesthetic features this discrete scale can apply to.
#'
#' @return a visualization with discrete duke color scale in fill
#' @export
#'
#' @examples
#' library(ggplot2)
#' library(palmerpenguins)
#'
#' # default
#' ggplot(penguins, aes(x = species, fill = species)) +
#'   geom_bar()
#'
#' # vs. with Duke scale
#' ggplot(penguins, aes(x = species, fill = species)) +
#'   geom_bar() +
#'   scale_duke_fill_discrete()
scale_duke_fill_discrete <- function(..., na.value = "#B5B5B5",
                                     guide = "legend",
                                     aesthetics = "fill") {
  ggplot2::discrete_scale(
    aesthetics = aesthetics, "duke_d_fill", duke_pal(),
    na.value = na.value, guide = guide, ...
  )
}
