#' Coerces a Vector
#'
#' @param v ([SEXP]) An \R object.
#'
#' @param type ([integer]) An [integer] of length one.
#'
#' @return `coerceVector()` returns ([SEXP]) of type `type`.
#'
#' @section C API:
#'
#' ```c
#' #include <Rinternals.h>
#'
#' SEXP Rf_coerceVector(SEXP, SEXPTYPE)
#' #define coerceVector		Rf_coerceVector
#' ```
#'
#' ```c
#' #include <Rdefines.h>
#'
#' src/include/Rdefines.h:#define AS_LOGICAL(x)		Rf_coerceVector(x,LGLSXP)
#' src/include/Rdefines.h:#define AS_INTEGER(x)		Rf_coerceVector(x,INTSXP)
#' src/include/Rdefines.h:#define AS_NUMERIC(x)		Rf_coerceVector(x,REALSXP)
#' src/include/Rdefines.h:#define AS_CHARACTER(x)		Rf_coerceVector(x,STRSXP)
#' src/include/Rdefines.h:#define AS_COMPLEX(x)		Rf_coerceVector(x,CPLXSXP)
#' src/include/Rdefines.h:#define AS_VECTOR(x)		Rf_coerceVector(x,VECSXP)
#' src/include/Rdefines.h:#define AS_LIST(x)		Rf_coerceVector(x,VECSXP)
#' src/include/Rdefines.h:#define AS_RAW(x)		Rf_coerceVector(x,RAWSXP)
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
#' @source Declaration: [src/include/Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h)
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

#' [integer]: [base::integer]
