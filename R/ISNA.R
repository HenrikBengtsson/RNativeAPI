#' Checks if a Value is NA, NaN, or Finite
#'
#' @param x (double) An scalar double.
#'
#' @return (integer) 0 ("false") or 1 ("true").
#'
#' @section Overview:
#'
#' |             | `NaN`  | `NA`  |
#' |-------------|--------|-------|
#' | C API:      |        |       |
#' | `ISNAN()`   | true   | true  |
#' | `ISNA()`    | false  | true  |
#' | `R_IsNaN()` | true   | false |
#' | `R_IsNA()`  | false  | true  |
#' |             |        |       |
#' | R API:      |        |       |
#' | `is.na()`   | TRUE   | TRUE  |
#' | `is.nan()`  | TRUE   | FALSE |
#'
#  Source: Kevin Ushey, StackOverflow, October 2014,
#  https://stackoverflow.com/a/26262984/1072091
#'
#' @section C API:
#'
#' ```c
#'  #include <R.h>
#'  
#'  int R_IsNA(double);
#'  int R_IsNaN(double);
#'  int R_finite(double);
#'  
#'  #define ISNA(x)	       R_IsNA(x)
#'  
#'  #ifdef __cplusplus
#'    int R_isnancpp(double); /* in arithmetic.c */
#'  #  define ISNAN(x)     R_isnancpp(x)
#'  #else
#'  #  define ISNAN(x)     (isnan(x)!=0)
#'  #endif
#'  
#'  #ifdef HAVE_WORKING_ISFINITE
#'  /* isfinite is defined in <math.h> according to C99 */
#'  # define R_FINITE(x)    isfinite(x)
#'  #else
#'  # define R_FINITE(x)    R_finite(x)
#'  #endif
#' ```
#  Comment: Need to indent above C code to avoid the #ifdef
#           parts from being dropped
#'
#' @section R API:
#' ```r
#' library(base)
#'
#' x <- c(NA_real_, NaN, 3.14, -Inf, +Inf)
#' is.na(x)        # c( TRUE,  TRUE, FALSE, FALSE, FALSE)
#' is.nan(x)       # c(FALSE,  TRUE, FALSE, FALSE, FALSE)
#' is.finite(x)    # c( TRUE,  TRUE,  TRUE, FALSE, FALSE)
#' is.infinite(x)  # c(FALSE, FALSE, FALSE,  TRUE,  TRUE)
#' ```
#'
#' @source Declaration: [src/include/R_ext/Arith.h](https://github.com/wch/r-source/blob/trunk/src/include/R_ext/Arith.h) via [src/include/R.h](https://github.com/wch/r-source/blob/trunk/src/include/R.h)
#' @source Implementation: Functions `R_IsNA(double x)`, `R_IsNaN(double x)`, and `R_finite(double x)` are implemented in [src/main/arithmetic.c](https://github.com/wch/r-source/blob/trunk/src/main/arithmetic.c)
#'
#' @aliases ISNA ISNAN R_FINITE
#' @aliases R_IsNA R_IsNaN R_finite
#' @export
ISNA <- ISNAN <- R_FINITE <- R_IsNA <- R_IsNaN <- R_finite <- function(x) {
  x = "double"
  return(logical(1L))
}

