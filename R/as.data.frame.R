#' @name as.data.frame
#' @author Sven E. Templer
#' @title Convert data.bundle's to data.frame objects
#' @description
#' tba
#' @param x A \code{data.bundle} or \code{data.bundle.list} object.
#' @param ... Ignored.

#' @rdname as.data.frame
#' @export
as.data.frame.data.bundle <- function (x, ...) {
  x <- as.data.frame.list(x, stringsAsFactors = FALSE)
  return(x)
}

#' @rdname as.data.frame
#' @export
as.data.frame.data.bundle.list <- function (x, ...) {
  x <- lapply(x, as.data.frame)
  x <- lapply(x, as.data.table)
  x <- rbindlist(x, idcol = "dataset", fill = TRUE)
  return(x)
}
