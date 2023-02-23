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
  values <- c("#00539B", "#339898", "#C84E00", "#A1B70D", "#E89923",
                       "#993399", "#012169", "#262626")
  }
  if (num == 2) {
    values <- c("#00539B", "#A1B70D", "#262626", "#C84E00","#339898", "#993399",
                         "#E89923","#012169")
  }
  if (num == 3) {
    values <- c("#00539B",  "#993399", "#C84E00","#339898", "#A1B70D",
                         "#988675" ,"#012169", "#262626")
  }
  f <- scales::manual_pal(values)
  attr(f, "max_n") <- length(values)
  f
}
