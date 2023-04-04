#' Apply discrete color scale
#'
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
#' library(ggplot2)
#' library(palmerpenguins)
#'
#' # default
#' ggplot(penguins, aes(x = bill_depth_mm, y = bill_length_mm, color = species)) +
#'   geom_point()
#'
#' # vs. with scale_duke_color_discrete()
#' ggplot(penguins, aes(x = bill_depth_mm, y = bill_length_mm, color = species)) +
#'   geom_point() +
#'   scale_duke_color_discrete()
scale_duke_color_discrete <- function(..., na.value = "#B5B5B5",
                                      guide = "legend",
                                      aesthetics = c("color", "colour")) {
  ggplot2::discrete_scale(
    aesthetics = aesthetics, "duke_d_color", duke_pal(),
    na.value = na.value, guide = guide, ...
  )
}
