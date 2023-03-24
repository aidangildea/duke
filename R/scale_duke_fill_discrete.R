#' Title
#'
#' @param ... Arguments passed on to `discrete_scale`.
#' @param na.value Color used for NA values
#' @param guide the name used to create the guide. See [`guides`](https://www.rdocumentation.org/link/guides?package=ggplot2&version=2.1.0) for more info.
#' @param aesthetics String or vector of strings detailing what aesthetic features this discrete scale can apply to.
#'
#' @return a visualization with discrete duke color scale in fill
#' @export
#'
#' @examples
#' #' # Default example
#' plot3 <- ggplot2::ggplot(iris, ggplot2::aes(x=Species, fill = Species)) + ggplot2::geom_bar()
#' plot3 + scale_duke_fill_discrete()
scale_duke_fill_discrete <- function(..., na.value = "#B5B5B5",
                                     guide = "legend",
                                     aesthetics = "fill", num = 1) {
  ggplot2::discrete_scale(aesthetics = aesthetics, "duke_d_fill", duke_pal(num = num),
                          na.value = na.value, guide = guide, ...)
}
