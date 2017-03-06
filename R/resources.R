#' @name resources
#' @author Sven E. Templer
#' @title Extract resources information from package queries
#' @description
#' Get the resources available for datasets stored as \code{data.bundle}.
#' @param id Character string with resource id.
#' @param simplify Logical value, \code{TRUE} to get result as a data.frame,
#' with one dataset per row.
#' @return
#' \code{resources} returns a list of resources lists, or if \code{simplify}
#' is true, a data.frame.
#' @seealso
#' See \link[CologneOpenDataAPI]{get_packages} for how to obtain package resources.

#' @rdname resources
#' @export
resources <- function (x, ...) { UseMethod("resources") }

#' @rdname resources
#' @export
resources.default <- function (x, ...) {
  message("No resources found for data, returning NULL.")
  return(NULL)
}

#' @rdname resources
#' @export
resources.data.bundle <- function (x, simplify = TRUE, ...) {
  # get list from attributes
  r <- attr(x, "resources")
  # check structure
  if (is.null(r) || !length(r)) return(NULL)
  # check content
  n <- sum(sapply(r, length))
  # return if with sublists
  if (n != length(unlist(r))) return(r)
  # tabular
  r <- rbindlist(lapply(r, as.data.table))
  return(r)
}

#' @rdname resources
#' @export
resources.data.bundle.list <- function (x, simplify = TRUE, ...) {
  r <- lapply(x, resources, simplify = simplify, ...)
  if (simplify)
    r <- rbindlist(r, idcol = "dataset")
  return(r)
}
