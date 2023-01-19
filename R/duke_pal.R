#' Duke Palette Function
#'
#' @return Character vector of Duke palette hex codes.
#' @export
#' @importFrom scales "manual_pal"
#'
#' @examples
#' duke_pal()
duke_pal <- function() {
  values <- c("#00539B", "#012169", "#C84E00", "#E89923", "#262626", "#F3F2F1")
  f <- scales::manual_pal(values)
  attr(f, "max_n") <- length(values)
  f
}
