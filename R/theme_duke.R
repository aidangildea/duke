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
#' @importFrom ggplot2 'rel'
#' @importFrom ggplot2 'margin'
#' @importFrom ggplot2 'element_text'
#' @importFrom sysfonts 'font_add'
#' @importFrom sysfonts 'font_files'
#' @importFrom showtext 'showtext_auto'
#' @importFrom utils 'menu'
#' @importFrom utils 'browseURL'
#' @examples
#' plot <- ggplot2::ggplot(cars, ggplot2::aes(speed, dist)) +
#' ggplot2::geom_point() + ggplot2::labs(title = "Duke Blue")
#' plot + theme_duke()
theme_duke <- function(base_size = 11, base_family = "",
                     base_line_size = base_size / 22,
                     base_rect_size = base_size / 22) {

  half_line <- base_size / 2

# Downloading fonts
# If error occurs, custom error message is printed

  # tryCatch(
  #   sysfonts::font_add(family = "Garamond 3 LT Std",
  #                      regular = "Garamond3LTStd.otf"),
  #   error = function(e) {
  #     message("Garamond 3 LT Std is not available on your system.\n")
  #     if (interactive()) {
  #     resp <-
  #       utils::menu(c("Yes", "No"), title = "Do you want to download Garamond 3 LT Std locally?")
  #     if (resp == "Yes" | resp == 1) {
  #       message("Downloading Garamond 3 LT Std. Install the font and rerun code for proper use.\n")
  #       utils::browseURL("https://github.com/aidangildea/duke/raw/master/Fonts/Garamond3LTStd.otf")
  #     }}
  #   }
  # )

  tryCatch(
    sysfonts::font_add(family = "hyperlegible",
                       regular = "Atkinson-Hyperlegible-Regular-102.otf"),
    error = function(e) {
      message("Atkinson-Hyperlegible is not available on your system.\n")
      if (interactive()) {
      resp <-
        utils::menu(c("Yes", "No"), title = "Do you want to download Atkinson-Hyperlegible locally?")
      if (resp == "Yes" | resp == 1) {
        message("Downloading Atkinson-Hyperlegible. Install the font and rerun code for proper use.\n")
        utils::browseURL(
          "https://github.com/aidangildea/duke/raw/master/Fonts/Atkinson-Hyperlegible-Regular-102.otf"
        )
      }}
    }
  )

#   tryCatch(sysfonts::font_add(family = "Garamond 3 LT Std",
#                      regular = "Garamond3LTStd.otf"),
#            warning = function(e) {warning("Garamond 3 LT Std is not available on
# your system. Please download [Garamond 3 Lt Std](https://github.com/aidangildea/duke/raw/master/Fonts/Garamond3LTStd.otf) for custom font functionality.\n")})
  # tryCatch(sysfonts::font_add(family = "EBGaramond",
  #                    regular = "EBGaramond-Regular.ttf"),
  #          error = function(e) {warning("EB Garamond is not available on your system. Please download and install for custom font functionality.\n")})
  # tryCatch(sysfonts::font_add(family = "opensans",
  #                    regular = "OpenSans-Regular.ttf"),
  #          error = function(e) {warning("OpenSans is not available on your system. Please download and install for custom font functionality.\n")})
#   tryCatch(sysfonts::font_add(family = "hyperlegible",
#                      regular = "Atkinson-Hyperlegible-Regular-102.otf"),
#            error = function(e) {warning("Atkinson-Hyperlegible is not available
# on your system. Please download [Atkinson-Hyperlegible](https://github.com/aidangildea/duke/raw/master/Fonts/Atkinson-Hyperlegible-Regular-102.otf)custom font functionality.\n")})


  fonts <- as.data.frame(sysfonts::font_files()$family)

  if(any(fonts == "Atkinson Hyperlegible")) {
    title <- "hyperlegible" } else {title <- "sans"
    warning("Defaulting to sans font for title.\n")}
  if(any(fonts == "Atkinson Hyperlegible")) {
    legend <- "hyperlegible" } else {legend <- "sans"
    warning("Defaulting to sans font for legend.\n")}
  if(any(fonts == "Atkinson Hyperlegible")) {
    axis <- "hyperlegible" } else {axis <- "sans"
    # had opensans earlier, trying new fonts
    warning("Defaulting to sans font for axis.\n")}
  if(any(fonts == "Atkinson Hyperlegible")) {
    caption <- "hyperlegible" } else {caption <- "sans"
    warning("Defaulting to sans font for caption.\n")}

  # if(any(fonts == "EB Garamond")) {
  #   legend <- "EBGaramond" } else {legend <- "sans"
  #   warning("Defaulting to sans font.")}
  # if(any(fonts == "EB Garamond")) {
  #   axis <- "EBGaramond" } else {axis <- "sans"
  #   # had opensans earlier, trying new fonts
  #   warning("Defaulting to sans font.")}

  showtext::showtext_auto()
  # Starts with theme_grey and then modify some parts
  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  ) %+replace%
    ggplot2::theme(
      # title text aesthetics
      plot.title =  ggplot2::element_text(size = ggplot2::rel(2),
                                          #hjust = 0, vjust = 1,
                                          margin = ggplot2::margin(b = half_line),
                                          family = title, face = "bold",
                                          colour = "#00539B" #, size = 30
                                          ),
      #plot.title.position = "panel",
      # subtitle text aesthetics
      plot.subtitle = ggplot2::element_text(# font size "regular"
                                            size = ggplot2::rel(1.5),
                                            hjust = 0, vjust = 1,
                                            margin = ggplot2::margin(b = half_line),
                                            family = title, colour = "#00539B"),
      # caption text aesthetics
      plot.caption =  ggplot2::element_text(# font size "small"
                                            size = ggplot2::rel(1.5),
                                            hjust = 1, vjust = 1,
                                            margin = ggplot2::margin(t = half_line),
                                            family = caption, colour = "#00539B"
                                            #size = 20, hjust = 1, vjust = -.7
                                            ),
      plot.caption.position = "panel",
      # axis title and text aesthetics
      axis.title.x =   ggplot2::element_text(size = ggplot2::rel(1.75),
                                             margin = ggplot2::margin(t = half_line / 2),
                                             vjust = -.5,
                                             family = axis, colour = "#00539B"

                                             ),
      axis.title.y =  ggplot2::element_text(size = ggplot2::rel(1.75), angle = 90,
                                            margin = ggplot2::margin(r = half_line / 2),
                                            vjust = 1,
                                            family = axis, colour = "#00539B"

                                            ),
      axis.text =          ggplot2::element_text(size = ggplot2::rel(1.5), colour = "#012169"),
      axis.text.x = ggplot2::element_text(margin =
                                            ggplot2::margin(t = 0.8 * half_line / 2),
                                            vjust = 1, family = axis),
      axis.text.y = ggplot2::element_text(margin =
                                            ggplot2::margin(r = 0.8 * half_line / 2),
                                          hjust = 1, family = axis),
      # legend title and text aesthetics
      #legend.position = "right",
      legend.text = ggplot2::element_text(family = legend, color = "#00539B"),
      legend.title = ggplot2::element_text(family = legend, color = "#00539B"),
      # background panel for facet plot titles
      strip.background = ggplot2::element_rect(fill = "#E2E6ED",color = "#E2E6ED"),
      # text for facet plots
      strip.text = ggplot2::element_text(family = axis, colour = "#012169"),
      strip.text.x = ggplot2::element_text(family = axis, colour = "#012169"),
      strip.text.y = ggplot2::element_text(family = axis, colour = "#012169"),

      complete = TRUE
    )
}




