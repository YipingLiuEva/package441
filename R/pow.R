#' Power Calculation
#'
#' function to print x raised to the power y
#'
#' @param x a number in calculation
#' @param y the number raised to x
#' @export

pow <- function(x, y) {
  # function to print x raised to the power y
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}
