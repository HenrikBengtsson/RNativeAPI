#' Checks for User Interrupt
#'
#' Check if the user has requested an interrupt, and if so branch to
#' \R's error signaling functions.
#'
#' @param void (void) Nothing.
#'
#' @return Nothing.
#'
#' @section C API:
#'
#' ```c
#' #include <R_ext/Utils.h>
#'
#' void R_CheckUserInterrupt(void)
#' ```
#
#' @section R API:
#'
#' N/A
#'
#' @source Declaration: [src/include/R_ext/Utils.h](https://github.com/wch/r-source/blob/trunk/src/include/R_ext/Utils.h)
#' @source Implementation: [src/main/errors.c](https://github.com/wch/r-source/blob/trunk/src/main/errors.c)
#'
#' @export
R_CheckUserInterrupt <- function(void) {
  void = void
  
  return(void)
}
