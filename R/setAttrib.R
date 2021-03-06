#' Gets and Sets an Attribute of an R Object
#'
#' @param vec ([SEXP]) An \R object.
#'
#' @param name ([SEXP]) A [character] of length one.
#'
#' @return `getAttrib()` returns ([SEXP]) the value of attribute `name`.
#'
#' @section C API:
#'
#' ```c
#' #include <Rinternals.h>
#'
#' SEXP getAttrib(SEXP vec, SEXP name)
#' SEXP setAttrib(SEXP vec, SEXP name, SEXP val)
#' ```
#
#' @section R API:
#' ```r
#' library(base)
#'
#' value <- attr(vec, name, exact = TRUE)
#' attr(vec, name) <- val
#' ```
#'
#' @source Declaration: [src/include/Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h)
#' @source Implementation: [src/main/attrib.c](https://github.com/wch/r-source/blob/trunk/src/main/attrib.c)
#'
#' @export
getAttrib <- function(vec, name) {
  vec = SEXP
  name = SEXP
  
  return(SEXP)
}


#' @param val ([SEXP]) An \R object.
#'
#' @return `setAttrib()` returns ([SEXP]) a copy of \R object `vec` with attribute `name` set.
#' @return ([SEXP]) 
#'
#' @rdname getAttrib
#' @export
setAttrib <- function(vec, name, val) {
  vec = SEXP
  name = SEXP
  val = SEXP
  
  return(SEXP)
}


#' [character]: [base::character]
