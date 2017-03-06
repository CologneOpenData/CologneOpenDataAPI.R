#' @name get_packages
#' @author Sven E. Templer
#' @title Query Cologne open data dataset packages and resources
#' @description
#' \code{get_packages} queries for a list of available packages (data bundles).\cr
#' \code{get_package_resources} as above, including ressources (datasets for each package).\cr
#' \code{get_package_info} queries the information for a package.\cr
#' @param id Character string with dataset id as obtained from \code{get_packages}.
#' @return
#' \code{get_packages} returns a character vector.\cr
#' \code{get_package_resources} returns a list of character vectors.\cr
#' \code{get_package_info} returns a character vector.\cr
#' @seealso
#' See \link[CologneOpenDataAPI]{as.data.frame} for how to extract package
#' metadata as tables.\cr
#' See \link[CologneOpenDataAPI]{resources} for how to extract package resources
#' as tables.\cr

#' @rdname get_packages
#' @export
get_packages <- function () {
  url <- "https://offenedaten-koeln.de/api/3/action/package_list"
  site <- request_site(url)
  result <- unlist(site$result)
  attributes(result) <- request_attributes(site)
  return(result)
}

#' @rdname get_packages
#' @export
get_package_resources <- function () {
  url <- "http://offenedaten-koeln.de/api/3/action/current_package_list_with_resources"
  site <- request_site(url)
  result <- unlist(site$result, recursive = FALSE)
  result <- lapply(result, simplify_item)
  result <- setNames(result, sapply(result, "[[", "name"))
  attributes(result) <- c(attributes(result), request_attributes(site))
  class(result) <- c("data.bundle.list", class(result))
  return(result)
}

#' @rdname get_packages
#' @export
get_package_info <- function (id) {
  url <- paste0("http://offenedaten-koeln.de/api/3/action/package_show?id=", id)
  site <- request_site(url)
  result <- unlist(site$result, recursive = FALSE)
  result <- simplify_item(result)
  attributes(result) <- c(attributes(result), request_attributes(site))
  return(result)
}
