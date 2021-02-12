#' Coerces a Vector
#'
#' @param v ([SEXP]) An \R object.
#'
#' @param type ([SEXPTYPE]) An macro constant of length one.
#'
#' @return `coerceVector()` returns an [SEXP] object of type [SEXPTYPE] `type`.
#'
#' @section C API:
#'
#' ```c
#' #include <Rinternals.h>
#' SEXP Rf_coerceVector(SEXP, SEXPTYPE)
#' #define coerceVector		Rf_coerceVector
#' ```
#'
#' Related macros:
#'
#' ```c
#' #include <Rdefines.h>
#' #define AS_LOGICAL(x)		Rf_coerceVector(x,LGLSXP)
#' #define AS_INTEGER(x)		Rf_coerceVector(x,INTSXP)
#' #define AS_NUMERIC(x)		Rf_coerceVector(x,REALSXP)
#' #define AS_CHARACTER(x)		Rf_coerceVector(x,STRSXP)
#' #define AS_COMPLEX(x)		Rf_coerceVector(x,CPLXSXP)
#' #define AS_VECTOR(x)		Rf_coerceVector(x,VECSXP)
#' #define AS_LIST(x)		Rf_coerceVector(x,VECSXP)
#' #define AS_RAW(x)		Rf_coerceVector(x,RAWSXP)
#' ```
#'
#' @section R API:
#' ```r
#' library(base)
#'
#' x <- 1:5
#' y_integer   <- as.integer(x)
#' y_logical   <- as.logical(x)
#' y_numeric   <- as.numeric(x)
#' y_character <- as.character(x)
#' ```
#'
#' @source Declaration: [src/include/Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h) and [src/include/Rdefines.h](https://github.com/wch/r-source/blob/trunk/src/include/Rdefines.h)
#' @source Implementation: [src/main/coerce.c](https://github.com/wch/r-source/blob/trunk/src/main/coerce.c)
#'
#' @aliases Rf_coerceVector
#' @aliases AS_LOGICAL AS_INTEGER AS_NUMERIC AS_CHARACTER AS_COMPLEX AS_VECTOR AS_LIST AS_RAW 
#' @export
coerceVector <- function(v, type) {
  v = SEXP
  type = integer
  
  return(SEXP)
}
