#' @name get_resources_info
#' @author Sven E. Templer
#' @title Query Cologne open data dataset resource information
#' @description
#' Query information of a single resource (dataset).
#' @param id Character string with the id of the resource.
#' @return
#' \code{get_resources_info} returns a character vector.
#' @seealso
#' See \link[CologneOpenDataAPI]{get_packages} and \link[CologneOpenDataAPI]{resources}
#' for how to obtain resource ids.

#' @export
get_resources_info <- function (id) {
  url <- paste0("http://offenedaten-koeln.de/api/3/action/resource_show?id=", id)
  site <- request_site(url)
  result <- site$result
  attributes(result) <- c(attributes(result), request_attributes(site))
  return(result)
}
