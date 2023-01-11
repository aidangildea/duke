#' Apply continuous color scale
#'
#' @param ... Arguments passes on to [continuous_scale](http://127.0.0.1:65374/help/library/ggplot2/help/continuous_scale).
#' @param low Low end of color gradient.
#' @param high High end of color gradient.
#' @param space Color space in which to calculate gradient.
#' @param na.value Color used for NA values.
#' @param guide Type of legend. "colorbar" for continuous scale, "legend" for discrete scale.
#' @param aesthetics String or vector of strings detailing what aesthetic features this continuous scale can apply to.
#'
#' @return a visualization with continuous duke color scale
#' @export
#'
#' @examples
#' # Default example from Hatteras to Duke Royal Blue
#' plot3 <- ggplot2::ggplot(iris, ggplot2::aes(x=Petal.Length, y = Petal.Width)) + ggplot2::geom_point()
#' plot3 + scale_duke_continuous()
scale_duke_continuous <- function(..., low = "#E2E6ED", high = "#00539B", space = "Lab",
                                  na.value = "#B5B5B5", guide = "colourbar", aesthetics = c("colour", "color")){
  ggplot2::continuous_scale(aesthetics, "gradient", scales::seq_gradient_pal(low, high, space),
                   na.value = na.value, guide = guide, ...)
}
