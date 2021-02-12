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
#' @section Availalble SEXTYPE types:
#'
#' * `NILSXP`	[NULL]
#' * `SYMSXP`	name/[symbol]
#' * `LISTSXP`	[pairlist]
#' * `CLOSXP`	[function] or function closure
#' * `ENVSXP`	[environment]
#' * `PROMSXP`	promises
#' * `LANGSXP`	[language] objects
#' * `SPECIALSXP`	special functions
#' * `BUILTINSXP`	builtin functions
#' * `CHARSXP`	internal character strings
#' * `LGLSXP`	[logical] vectors
#' * `INTSXP`	[integer] vectors
#' * `REALSXP`	[numeric] vectors (with storage mode [double])
#' * `CPLXSXP`	[complex] vectors
#' * `STRSXP`	[character] vectors
#' * `DOTSXP`	dot-dot-dot ([...]) object
#' * `ANYSXP`	make "any" args work
#' * `VECSXP`	[list] (generic vector)
#' * `EXPRSXP`	[expression] vector
#' * `BCODESXP`	byte code
#' * `EXTPTRSXP`	external pointer
#' * `WEAKREFSXP`	weak reference
#' * `RAWSXP`	[raw] vector
#' * `S4SXP`	S4 classes not of simple type
#'
#' @seealso
#' The `SEXPTYPE` is documented in Section 'Details of R types' in 'R Language Definition'
#' and Section 'SEXPTYPEs' in 'R Internals'.
#'
#' @docType class
#'
#' @aliases NILSXP SYMSXP LISTSXP CLOSXP ENVSXP PROMSXP LANGSXP SPECIALSXP BUILTINSXP CHARSXP LGLSXP INTSXP REALSXP CPLXSXP STRSXP DOTSXP ANYSXP VECSXP EXPRSXP BCODESXP EXTPTRSXP WEAKREFSXP RAWSXP S4SXP
#' @export
SEXPTYPE <- NULL
