#' Gets and Sets an Attribute of an R Object
#'
#' @param vec ([SEXP]) An \R object.
#'
#' @param name ([SEXP]) A [character] of length one.
#'
#' @return ([SEXP]) Gets the value of attribute `name`.
#'
#' @section C API:
#' ```c
#' SEXP getAttrib(SEXP vec, SEXP name)
#' SEXP setAttrib(SEXP vec, SEXP name, SEXP val)
#' ```
#
#' @section R API:
#' ```r
#' value <- attr(vec, name)
#' attr(vec, name) <- val
#' ```
#'
#' @source [src/include/Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h)
#' @source [src/main/attrib.c](https://github.com/wch/r-source/blob/trunk/src/main/attrib.c)
#'
#' @export
getAttrib <- function(vec, name) {
  vec = SEXP
  name = SEXP
  
  return(SEXP)
}


#' @param val ([SEXP]) An \R object.
#'
#' @return ([SEXP]) A copy of \R object `SEXP_vec` with attribute `name` set.
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
