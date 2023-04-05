install_font <- function(family_name, sub_dir) {

  if (!(family_name %in% systemfonts::system_fonts()$family)) {
    message(paste("Installing font:", family_name))
    systemfonts::register_font(
      name = family_name,
      plain = system.file("fonts", sub_dir, package = "duke")
    )
  }

  #loc <- system.file("fonts", sub_dir, package = "duke")
  #
  #if (platform() == "mac") {
  #  font_library <- path.expand("~/Library/Fonts")
  #
  #  if (!dir.exists(font_library)) {
  #    dir.create(font_library, showWarnings = TRUE, mode = "0700")
  #  }
  #
  #  message("Copying ", family_name, " to ", font_library)
  #
  #  file.copy(
  #    from = list.files(path = loc, full.names = TRUE),
  #    to = font_library
  #  ) -> res
  #} else {
  #  message(
  #    "The ", family_name, " font files are in:\n",
  #    system.file("fonts", sub_dir, package = "duke"),
  #    "\nand should be installed on your system."
  #  )
  #}
}

#' Install Atkinson Hyperlegible
#'
#' Atkinson Hyperlegible font is named after Braille Institute founder,
#' J. Robert Atkinson. What makes it different from traditional typography
#' design is that it focuses on letterform distinction to increase character
#' recognition, ultimately improving readability. It is it free for
#' anyone to use!
#'
#' @note [License](http://brailleinstitute.org/wp-content/uploads/2020/11/Atkinson-Hyperlegible-Font-License-2020-1104.pdf)
#' @export
#' @examples
#' install_atkinson_hyperlegible()
install_atkinson_hyperlegible <- function() {
  install_font(
    family_name = "Atkinson Hyperlegible",
    sub_dir = "atkinson-hyperlegible"
  )
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
#' @export
#' @examples
#' install_eb_garamond()
install_eb_garamond <- function() {
  install_font(
    family_name = "EB Garamond",
    sub_dir = "eb-garamond"
  )
}
