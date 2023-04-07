#' Install Atkinson Hyperlegible
#'
#' Atkinson Hyperlegible font is named after Braille Institute founder,
#' J. Robert Atkinson. What makes it different from traditional typography
#' design is that it focuses on letterform distinction to increase character
#' recognition, ultimately improving readability. It is it free for
#' anyone to use!
#'
#' @note [License](http://brailleinstitute.org/wp-content/uploads/2020/11/Atkinson-Hyperlegible-Font-License-2020-1104.pdf)
install_atkinson_hyperlegible <- function() {

  family_name <- "AtkinsonHyperlegible"

  if (!(family_name %in% systemfonts::system_fonts()$family |
        family_name %in% systemfonts::registry_fonts()$family)) {

    sub_dir <- "atkinson-hyperlegible"

    message(paste("Installing font:", family_name))
    systemfonts::register_font(
      name = family_name,
      plain = system.file("fonts", sub_dir, "AtkinsonHyperlegible-Regular.ttf", package = "duke"),
      bold = system.file("fonts", sub_dir, "AtkinsonHyperlegible-Bold.ttf", package = "duke"),
      bolditalic = system.file("fonts", sub_dir, "AtkinsonHyperlegible-BoldItalic.ttf", package = "duke"),
      italic = system.file("fonts", sub_dir, "AtkinsonHyperlegible-Italic.ttf", package = "duke")
    )
  }
}

#' Install Garamond EB
#'
#' As a cousin to the Garamond 3 LT used in the Duke wordmark, EB Garamond is a
#' clean and distinguished serif font that hews closely to the Duke legacy brand.
#' It is flexible enough to be used in headlines, subheads and body text, but
#' exercise discretion when using it at smaller font sizes.
#'
#' @note [Open Font License](https://fonts.google.com/specimen/EB+Garamond/about)
#' @references [Duke Brand Typography](https://brand.duke.edu/typography/#official)
install_eb_garamond <- function() {

  family_name <- "EBGaramond"

  if (!(family_name %in% systemfonts::system_fonts()$family |
        family_name %in% systemfonts::registry_fonts()$family)) {

    sub_dir <- "eb-garamond"

    message(paste("Installing font:", family_name))
    systemfonts::register_font(
      name = family_name,
      plain = system.file("fonts", sub_dir, "EBGaramond-Regular.ttf", package = "duke"),
      bold = system.file("fonts", sub_dir, "EBGaramond-Bold.ttf", package = "duke"),
      bolditalic = system.file("fonts", sub_dir, "EBGaramond-BoldItalic.ttf", package = "duke"),
      italic = system.file("fonts", sub_dir, "EBGaramond-Italic.ttf", package = "duke")
    )
  }

}
