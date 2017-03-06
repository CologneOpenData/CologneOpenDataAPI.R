#' @name get_data
#' @author Sven E. Templer
#' @title Query
#' @description
#' This function is not yet implemented as a working method. Stay updated!
#' @param id tba
#' @param limit tba
#' @param offset tba

get_data <- function (id, limit = NULL, offset = 100) {
  # id = resource id
  # limit = max hits
  # offset = next hits
  # fields = subset fields
  # filters = filter values
  # query = search for field
  stop('not yet implemented')
}

# query <- function (filter = NULL, fields = NULL) {
#   api <- "https://offenedaten-koeln.de/api/action/datastore/search.json?resource_id=4b35bd42-a198-4a5a-b48b-9ba5be441833"
#   example <- "filters%255bgeschlecht%255d=w&fields=vorname,anzahl&limit=10"
#   if (!is.null(filter)) {
#     filter <- "%"
#   }
#   warning("not yet implemented")
#   return(NULL)
# }
