#' Variance calculation.
#'
#' @param input datagroup and weights for calculation
#' @param Variance
#'
#' @export

wt_var <- function(x, w) {
  mu <- wt_mean(x, w)
  sum(w * (x - mu) ^ 2) / sum(w)
}
