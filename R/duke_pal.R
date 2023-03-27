#' Duke Palette Function
#'
#'
#' @return Character vector of Duke palette hex codes.
#' @export
#' @importFrom scales "manual_pal"
#'
#' @examples
#' duke_pal()
duke_pal <- function() {
  values <- c("#012169","#A1B70D", "#00539B", "#339898", "#C84E00", "#993399",
                       "#262626", "#E89923")
  f <- scales::manual_pal(values)
  attr(f, "max_n") <- length(values)
  f
}
