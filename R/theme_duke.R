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
#' @importFrom sysfonts 'font_add'
#' @importFrom showtext 'showtext_auto'
#' @examples
#' plot <- ggplot2::ggplot(cars, ggplot2::aes(speed, dist)) +
#' ggplot2::geom_point() + ggplot2::labs(title = "Duke Blue")
#' plot + theme_duke()
theme_duke<- function(base_size = 11, base_family = "",
                     base_line_size = base_size / 22,
                     base_rect_size = base_size / 22) {
  sysfonts::font_add(family = "Garamond 3 LT",
           regular = "Garamond3LTStd.otf")
  sysfonts::font_add(family = "EBGaramond",
                     regular = "EBGaramond-Regular.ttf")
  sysfonts::font_add(family = "opensans",
                     regular = "OpenSans-Regular.ttf")
  sysfonts::font_add(family = "hyperlegible",
                     regular = "Atkinson-Hyperlegible-Regular-102.otf")
  showtext::showtext_auto()
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
      legend.text = ggplot2::element_text(family = "EBGaramond"),
      legend.title = ggplot2::element_text(family = "EBGaramond"),
      # change title color
      plot.title =  ggplot2::element_text(family ="Garamond 3 LT", face = "bold", colour = "#00539B",
                                          size = 15),
      plot.caption =  ggplot2::element_text(family ="hyperlegible", colour = "#012169", hjust = .9),
      axis.title.x =   ggplot2::element_text(family ="opensans", colour = "#C84E00"),
      axis.title.y =  ggplot2::element_text(family ="opensans", colour = "#E89923"),

      complete = TRUE
    )
}
