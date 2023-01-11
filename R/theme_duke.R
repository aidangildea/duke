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
#' @importFrom sysfonts 'font_files'
#' @importFrom showtext 'showtext_auto'
#' @examples
#' plot <- ggplot2::ggplot(cars, ggplot2::aes(speed, dist)) +
#' ggplot2::geom_point() + ggplot2::labs(title = "Duke Blue")
#' plot + theme_duke()
theme_duke<- function(base_size = 11, base_family = "",
                     base_line_size = base_size / 22,
                     base_rect_size = base_size / 22) {
  # Downloading fonts
  # If error occurs, custom error message is printed
  tryCatch(sysfonts::font_add(family = "Garamond 3 LT Std",
                     regular = "Garamond3LTStd.otf"),
           error = function(e) {warning("Garamond 3 LT Std is not available on your system. Please download and install for custom font functionality.\n")})
  tryCatch(sysfonts::font_add(family = "EBGaramond",
                     regular = "EBGaramond-Regular.ttf"),
           error = function(e) {warning("EB Garamond is not available on your system. Please download and install for custom font functionality.\n")})
  tryCatch(sysfonts::font_add(family = "opensans",
                     regular = "OpenSans-Regular.ttf"),
           error = function(e) {warning("OpenSans is not available on your system. Please download and install for custom font functionality.\n")})
  tryCatch(sysfonts::font_add(family = "hyperlegible",
                     regular = "Atkinson-Hyperlegible-Regular-102.otf"),
           error = function(e) {warning("Atkinson-Hyperlegible is not available on your system. Please download and install for custom font functionality.\n")})

  fonts <- as.data.frame(sysfonts::font_files()$family)

  if(any(fonts == "Garamond 3 LT Std")) {
    title <- "Garamond 3 LT Std" } else {title <- "sans"
    warning("Defaulting to sans font.")}
  if(any(fonts == "EB Garamond")) {
    legend <- "EBGaramond" } else {legend <- "sans"
    warning("Defaulting to sans font.")}
  if(any(fonts == "Open Sans")) {
    axis <- "opensans" } else {axis <- "sans"
    warning("Defaulting to sans font.")}
  if(any(fonts == "Atkinson Hyperlegible")) {
    caption <- "hyperlegible" } else {caption <- "sans"
    warning("Defaulting to sans font.")}

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
      panel.background = ggplot2::element_rect(fill = "#F3F2F1", colour = NA),
      panel.border     = ggplot2::element_rect(fill = NA, colour = "grey20"),
      # make gridlines dark, same contrast with white as in theme_grey
      panel.grid = ggplot2::element_line(colour = "#00539B", linewidth = .2),
      panel.grid.minor = ggplot2::element_line(colour = "#00539B", linewidth = .2),
      # contour strips to match panel contour
      strip.background = ggplot2::element_rect(fill = "grey85", colour = "grey20"),
      # match legend key to background
      legend.key       = ggplot2::element_rect(fill = "white", colour = NA),
      legend.text = ggplot2::element_text(family = legend),
      legend.title = ggplot2::element_text(family = legend),
      plot.title =  ggplot2::element_text(family = title, face = "bold", colour = "#00539B",
                                          size = 15),
      plot.caption =  ggplot2::element_text(family = caption, colour = "#012169", hjust = .9),
      axis.title.x =   ggplot2::element_text(family = axis, colour = "#C84E00"),
      axis.title.y =  ggplot2::element_text(family = axis, colour = "#E89923"),

      complete = TRUE
    )
}


