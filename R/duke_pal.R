#' Duke Palette Function
#'
#' @param num palette value
#'
#' @return Character vector of Duke palette hex codes.
#' @export
#' @importFrom scales "manual_pal"
#'
#' @examples
#' duke_pal(1)
duke_pal <- function(num) {
  if (num == 1) {
  values <- c("#012169","#A1B70D", "#00539B", "#339898", "#C84E00", "#993399",
                       "#262626", "#E89923")
  }
  if (num == 2) {
    values <- c("#00539B", "#E89923", "#012169","#339898", "#993399", "#A1B70D",
                         "#262626", "#C84E00")
  }
  f <- scales::manual_pal(values)
  attr(f, "max_n") <- length(values)
  f
}
