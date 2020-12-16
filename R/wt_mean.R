#' Mean calculation.
#'
#' @param input datagroup and weights for calculation
#' @param Mean and dataset
#' @export

wt_mean <- function(x, w) {
  sum(x * w) / sum(w)
}

