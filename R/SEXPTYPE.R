#' The `SEXPTYPE` Structure
#'
#' @format A C struct.
#'
#' @section C API:
#'
#' ```c
#' #include <Rinternals.h>
#' ```
#'
#' @section Common types:
#'
#' Common `SEXPTYPE`:s an their \R equivalent, if available:
#'
#' * `REALSXP`	[numeric] with storage mode [double]
#' * `INTSXP`	[integer]
#' * `CPLXSXP`	[complex]
#' * `LGLSXP`	[logical]
#' * `STRSXP`	[character]
#' * `VECSXP`	list (generic vector)
#' * `LISTSXP`	[pairlist]
#' * `DOTSXP`	a [...] object
#' * `NILSXP`	[NULL]
#' * `SYMSXP`	name/symbol
#' * `CLOSXP`	[function] or function closure
#' * `ENVSXP`	[environment]
#'
#' @seealso
#' The `SEXPTYPE` is documented in Section 'Details of R types' of 'R Language Definition'.
#'
#' @docType class
#'
#' @export
SEXPTYPE <- NULL
