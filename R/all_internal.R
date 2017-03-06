# internal functions

request_site <- function (u) {
  # get site via httr
  s <- GET(u)
  # extract content from stream
  s <- content(s)
  return(s)
}

request_attributes <- function (s) {
  s[c("help", "success")]
}

simplify_item <- function (i, tabular = FALSE) {
  # length of elements
  n <- unlist_lengths(i)
  # list of attributes
  a <- i[n>1]
  # replace lists with counts
  i[n>1] <- lapply(i[n>1], length)
  # unlist
  if (tabular) i <- data.frame(i, stringsAsFactors = F)
  # add attributes
  if (length(a)) attributes(i) <- c(attributes(i), a)
  # define class
  class(i) <- c("data.bundle", class(i))
  # return
  return(i)
}

unlist_lengths <- function (x) {
  # check lengths of each unlisted list element
  n <- sapply(x, function (y) length(unlist(y)))
}

translate_id <- function (id) {
  i <- get_package_info(id)
  r <- attr(i, "resources")
  r <- rbindlist(lapply(r, as.data.table))
  return(r)
}

# extract_package_result <- function (s, simplify = FALSE) {
#   # simplify
#   if (all(unlist_lengths(r) == 1)) r <- unlist(r)
#   # if (length(r)) {
#   #   rnames <- sapply(r, function (i) if ("name" %in% names(i)) i[["name"]] else NA_character_)
#   #   if (all(!is.na(rnames))) r <- setNames(r, rnames)
#   # }
#   return(r)
# }

