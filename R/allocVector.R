#' Allocates a Vector
#'
#' @param type ([SEXPTYPE]) An macro constant of length one.
#'
#' @param length ([R_xlen_t]) An non-negative integer.
#'
#' @return `allocVector()` returns an [SEXP] object of type [SEXPTYPE] `type`.
#'
#' @section C API:
#'
#' ```c
#' #include <Rinternals.h>
#' SEXP     Rf_allocVector(SEXPTYPE, R_xlen_t)
#' #define allocVector		Rf_allocVector
#' ```
#'
#' Related macros:
#'
#' ```c
#' #include <Rdefines.h>
#' #define NEW_LOGICAL(n)		Rf_allocVector(LGLSXP,n)
#' #define NEW_INTEGER(n)		Rf_allocVector(INTSXP,n)
#' #define NEW_NUMERIC(n)		Rf_allocVector(REALSXP,n)
#' #define NEW_CHARACTER(n)	Rf_allocVector(STRSXP,n)
#' #define NEW_COMPLEX(n)		Rf_allocVector(CPLXSXP,n)
#' #define NEW_LIST(n)		Rf_allocVector(VECSXP,n)
#' #define NEW_STRING(n)		NEW_CHARACTER(n)
#' #define NEW_RAW(n)		Rf_allocVector(RAWSXP,n)
#' ```
#'
#' @section R API:
#' ```r
#' library(base)
#'
#' x_logical   <- logical(length = n)
#' x_integer   <- integer(length = n)
#' x_numeric   <- numeric(length = n)
#' x_character <- character(length = n)
#' x_complex   <- complex(length.out = n)
#' x_list      <- vector(mode = "list", length = n)
#' x_raw       <- raw(length = n)
#' ```
#'
#' @source Declaration: [src/include/Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h) and [src/include/Rdefines.h](https://github.com/wch/r-source/blob/trunk/src/include/Rdefines.h)
#' @source Implementation: `allocVector(SEXPTYPE type, R_xlen_t length)` is a simple inline wrapper functions that calls `allocVector3(type, length, NULL)`, cf. [src/include/Rinlinedfuns.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinlinedfuns.h)
#'
#' @aliases Rf_allocVector
#' @aliases NEW_LOGICAL NEW_INTEGER NEW_NUMERIC NEW_CHARACTER NEW_COMPLEX NEW_LIST NEW_STRING NEW_RAW 
#' @export
allocVector <- function(type, length) {
  type = SEXPTYPE
  type = R_xlen_t
  
  return(SEXP)
}
