#' FRED GNP CPI
#'
#' @param observation_start This is a date
#' @param series_id This is a category of series
#'
#' @return
#' @export
#'
#' @examples fred_get_series(series_id="unrate")
#FRED API Key
# series_id = c("GNPCA", "CPIAUCSL")

fred_series <- function(APIkey, series_id, observation_start){
  APIkey = "e67121f20c15f2fa5dc000b94fb6bdb0"
  series_id = "GNPCA"
  observation_start = "1990-01-01"
  URL = "https://api.stlouisfed.org/fred/series/observations"
  parameters = paste(
    "?series_id=",series_id,
    "&api_key=", APIkey,
    "&file_type=json",
    "&observation_start=",observation_start,
    sep = "")
  PATH = paste0(URL, parameters)
  initialquery = fromJSON(PATH)
  df = initialquery$observations
  rownames(df) <- df$date  #Change index in front of the line from "1,2..." to a Date
  df = df[c("value")] # Just use value column
  df$value <- as.numeric(df$value) #change characters to numbers
  return(df)
}
