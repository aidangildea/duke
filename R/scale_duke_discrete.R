#' Apply discrete color scale
#' Partial code for this function can be attributed to [ggthemes](https://github.com/jrnold/ggthemes/blob/main/R/colorblind.R).
#'
#' @param ... Arguments passed on to `discrete_scale`.
#' @param na.value Color used for NA values
#' @param aesthetics String or vector of strings detailing what aesthetic features this disrete scale can apply to.
#'
#' @return a visualization with discrete duke color scale
#' @export
#'
#' @examples
#' #' # Default example
#' plot3 <- ggplot2::ggplot(iris, ggplot2::aes(x=Species, fill = Species)) + ggplot2::geom_bar()
#' plot3 + scale_duke_discrete()
scale_duke_discrete <- function(..., na.value = "#B5B5B5",
                                aesthetics = c("colour", "color", "fill"),
                                guide = "legend") {
  ggplot2::discrete_scale(aesthetics, "duke", duke_pal(),
                 na.value = na.value, guide = guide,...)
}
