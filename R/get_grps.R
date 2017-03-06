#' @name get_grps
#' @author Sven E. Templer
#' @title Query Cologne open data dataset groups of data origin
#' @description
#' tba
#' @return
#' \code{get_grps} returns a character vector.

#' @export
get_grps <- function () {
  url <- "http://offenedaten-koeln.de/api/3/action/group_list"
  site <- request_site(url)
  result <- unlist(site$result, use.names = FALSE)
  attributes(result) <- c(attributes(result), request_attributes(site))
  return(result)
}
