#' Type Definition: 'R_xlen_t' and 'R_len_t'
#'
#' @usage
#' #include <Rinternals.h>
#' R_len_t
#' R_xlen_t
#'
#' @section C API:
#' Long vectors:
#'
#' ```c
#' typedef ptrdiff_t R_xlen_t;
#' define R_XLEN_T_MAX 4503599627370496
#' ```
#'
#' If long vectors are not supported on the current platform, then:
#'
#' ```
#' typedef int R_xlen_t;
#' define R_XLEN_T_MAX R_LEN_T_MAX
#' ```
#'
#' Short vectors:
#' ```c
#' typedef int R_len_t;
#' #define R_LEN_T_MAX INT_MAX
#' ```
#'
#' @section R API:
#' ```r
#' library(base)
#'
#' # Maximum length of a "short" vector ...
#' x <- seq_len(.Machine$integer.max)
#' xlen <- length(x) # integer; internally R_len_t
#'
#' # ... before becoming a "long" vector
#' x <- seq_len(.Machine$integer.max + 1)
#' xlen <- length(x) # numeric; internally R_xlen_t
#' ```
#'
#' @source Declaration: [src/include/Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h) and [src/include/Rdefines.h](https://github.com/wch/r-source/blob/trunk/src/include/Rdefines.h)
#'
#' @aliases R_len_t R_xlen_t
#' @aliases R_LEN_T_MAX R_XLEN_T_MAX
#' @export
R_len_t <- structure(integer(1L), class = "typedef", min = 0L, max = .Machine[["integer.max"]])

#' @export
R_xlen_t <- structure(double(1L), class = "typedef", min = 0L, max = 2^52)
