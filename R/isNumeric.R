#' Checks if an SEXP is of Certain Type
#'
#' @param s ([SEXP]) An \R object.
#'
#' @return (`Rboolean`) `true` (=1) or `false` (=0).
#'
#' @section C API:
#'
#' ```c
#' #include <Rinternals.h>
#' Rboolean Rf_isNumeric(SEXP);
#' #define isNumeric		Rf_isNumeric
#' ```
#'
#' @section R API:
#' ```r
#' library(base)
#'
#' is.numeric(logical(length = 2L))  ## TRUE
#' is.numeric(integer(length = 2L))  ## TRUE
#' is.numeric(numeric(length = 2L))  ## TRUE
#' is.numeric(factor(c("a", "b")))   ## FALSE
#' ```
#'
#' @source Declaration: [src/include/Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h) and [src/include/Rdefines.h](https://github.com/wch/r-source/blob/trunk/src/include/Rdefines.h)
#' @source Implementation: Inline function `isNumeric(SEXP s)`, cf. [src/include/Rinlinedfuns.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinlinedfuns.h)
#'
#' @aliases isNumeric Rf_isNumeric
#' @export
isNumeric <- function(s) {
  x = SEXP
  return(logical(1L))
}
