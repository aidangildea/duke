#' Duke Palette Function
#'
#' @return Character vector of Duke palette hex codes.
#' @export
#' @importFrom scales "manual_pal"
#'
#' @examples
#' duke_pal()
duke_pal <- function() {
  values <- c("#00539B", "#339898", "#C84E00", "#A1B70D", "#E89923",
                       "#993399", "#012169", "#262626")
  f <- scales::manual_pal(values)
  attr(f, "max_n") <- length(values)
  f
}
