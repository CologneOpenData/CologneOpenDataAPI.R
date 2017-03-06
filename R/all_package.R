#' @name CologneOpenDataAPI-package
#' @docType package
#' @aliases CologneOpenDataAPI
#' @keywords Cologne open data
#' @author Sven E. Templer
#' @title Cologne open data API
#' @description
#' Query the city of Cologne (GER) open data resources.\cr
#' @section Terminology:
#' A \bold{group} is a resource provider.\cr
#' \cr
#' There exist two types of queries:
#' \itemize{
#' \item {information on available data (see section \emph{Query Data Information})}
#' \item {the datasets itself (see section \emph{Query Datasets})}
#' }
#' @section Data Structure:
#' Data is structured as a data bundles, called \bold{packages} by the API.\cr
#' Each bundle contains datasets, called \bold{resources} by the API.
#' @section Query Data Information:
#' See \link[CologneOpenDataAPI]{get_packages} for how to query for a complete
#' package list (optionally with resources), or for the resources of a single package.\cr
#' See \link[CologneOpenDataAPI]{get_grps} for how to get a list of data providers.\cr
#' See \link[CologneOpenDataAPI]{get_resources_info} for how to query metadata for
#' a single resource/dataset.
#' @section Query Datasets:
#' See \link[CologneOpenDataAPI]{get_data} for how to query resources/datasets.
#' @section Methods:
#' See \link[CologneOpenDataAPI]{as.data.frame} for how to extract metadata from
#' packages as a table.\cr
#' See \link[CologneOpenDataAPI]{resources} for how to extract resources as a table.
#' @seealso
#' https://www.offenedaten-koeln.de
#' @import httr
#' @import rjson
#' @import data.table

NULL

.onAttach <- function(libname, pkgname) {
  if (interactive()) { packageStartupMessage(
    'CologneOpenDataAPI version ',
    as.character(packageVersion("CologneOpenDataAPI")),
    ' | help and features: ?CologneOpenDataAPI')
  } }
