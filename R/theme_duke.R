#' Theme Duke
#'
#' @param base_size the base size
#' @param base_family the base family
#' @param base_line_size the baseline size
#' @param base_rect_size the base rect
#'
#' @return a plot with Duke colors
#' @export
#' @importFrom ggplot2 '%+replace%'
#' @examples
#' plot <- ggplot2::ggplot(cars, ggplot2::aes(speed, dist)) +
#' ggplot2::geom_point() + ggplot2::labs(title = "Duke Blue")
#' plot + theme_duke()
theme_duke<- function(base_size = 11, base_family = "",
                     base_line_size = base_size / 22,
                     base_rect_size = base_size / 22) {
  # Starts with theme_grey and then modify some parts
  ggplot2::theme_grey(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  ) %+replace%
    ggplot2::theme(
      # white background and dark border
      panel.background = ggplot2::element_rect(fill = "white", colour = NA),
      panel.border     = ggplot2::element_rect(fill = NA, colour = "grey20"),
      # make gridlines dark, same contrast with white as in theme_grey
      panel.grid = ggplot2::element_line(colour = "#00539B", size = .2),
      panel.grid.minor = ggplot2::element_line(colour = "#00539B", size = .2),
      # contour strips to match panel contour
      strip.background = ggplot2::element_rect(fill = "grey85", colour = "grey20"),
      # match legend key to background
      legend.key       = ggplot2::element_rect(fill = "white", colour = NA),
      # change title color
      plot.title =  ggplot2::element_text(family ="Helvetica", colour = "#00539B",
                                          size = 15),
      plot.caption =  ggplot2::element_text(colour = "#012169", hjust = .9),
      axis.title.x =   ggplot2::element_text(colour = "#C84E00"),
      axis.title.y =  ggplot2::element_text(colour = "#E89923"),

      complete = TRUE
    )
}
