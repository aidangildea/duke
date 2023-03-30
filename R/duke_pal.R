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
  values <- c("#012169","#A1B70D", "#C84E00", "#00539B", "#339898", "#E89923",
                       "#FFD960", "#262626")
  f <- scales::manual_pal(values)
  attr(f, "max_n") <- length(values)
  f
}
