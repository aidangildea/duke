#' Apply discrete color scale
#' Partial code for this function can be attributed to [ggthemes](https://github.com/jrnold/ggthemes/blob/main/R/colorblind.R).
#'
#' @param ... Arguments passed on to `discrete_scale`.
#' @param na.value Color used for NA values
#' @param guide the name used to create the guide. See [`guides`](https://www.rdocumentation.org/link/guides?package=ggplot2&version=2.1.0) for more info.
#' @param aesthetics String or vector of strings detailing what aesthetic features this discrete scale can apply to.
#'
#' @return a visualization with discrete duke color scale
#' @export
#'
#' @examples
#' #' # Default example
#' plot3 <- ggplot2::ggplot(iris, ggplot2::aes(x=Petal.Length, y = Petal.Width, color = Species)) + ggplot2::geom_point()
#' plot3 + scale_duke_color_discrete()

scale_duke_color_discrete <- function(..., na.value = "#B5B5B5",
                                     guide = "legend",
                                     aesthetics = c("color", "colour"), num = 1) {
  ggplot2::discrete_scale(aesthetics = aesthetics, "duke_d_color", duke_pal(num = num),
                          na.value = na.value, guide = guide, ...)
}
