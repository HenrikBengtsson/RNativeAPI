% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISNA.R
\name{ISNA}
\alias{ISNA}
\alias{ISNAN}
\alias{R_FINITE}
\alias{R_IsNA}
\alias{R_IsNaN}
\alias{R_finite}
\title{Checks if a Value is NA, NaN, or Finite}
\source{
Declaration: \href{https://github.com/wch/r-source/blob/trunk/src/include/R_ext/Arith.h}{src/include/R_ext/Arith.h} via \href{https://github.com/wch/r-source/blob/trunk/src/include/R.h}{src/include/R.h}

Implementation: Functions \verb{R_IsNA(double x)}, \verb{R_IsNaN(double x)}, and \verb{R_finite(double x)} are implemented in \href{https://github.com/wch/r-source/blob/trunk/src/main/arithmetic.c}{src/main/arithmetic.c}
}
\usage{
ISNA(x)
}
\arguments{
\item{x}{(double) An scalar double.}
}
\value{
(integer) 0 ("false") or 1 ("true").
}
\description{
Checks if a Value is NA, NaN, or Finite
}
\section{Overview}{
\tabular{lll}{
    \tab \code{NaN} \tab \code{NA} \cr
   C API: \tab  \tab  \cr
   \code{ISNAN()} \tab true \tab true \cr
   \code{ISNA()} \tab false \tab true \cr
   \code{R_IsNaN()} \tab true \tab false \cr
   \code{R_IsNA()} \tab false \tab true \cr
    \tab  \tab  \cr
   R API: \tab  \tab  \cr
   \code{is.na()} \tab TRUE \tab TRUE \cr
   \code{is.nan()} \tab TRUE \tab FALSE \cr
}
}

\section{C API}{


\if{html}{\out{<div class="sourceCode c">}}\preformatted{ #include <R.h>
 
 int R_IsNA(double);
 int R_IsNaN(double);
 int R_finite(double);
 
 #define ISNA(x)	       R_IsNA(x)
 
 #ifdef __cplusplus
   int R_isnancpp(double); /* in arithmetic.c */
 #  define ISNAN(x)     R_isnancpp(x)
 #else
 #  define ISNAN(x)     (isnan(x)!=0)
 #endif
 
 #ifdef HAVE_WORKING_ISFINITE
 /* isfinite is defined in <math.h> according to C99 */
 # define R_FINITE(x)    isfinite(x)
 #else
 # define R_FINITE(x)    R_finite(x)
 #endif
}\if{html}{\out{</div>}}
}

\section{R API}{


\if{html}{\out{<div class="sourceCode r">}}\preformatted{library(base)

x <- c(NA_real_, NaN, 3.14, -Inf, +Inf)
is.na(x)        # c( TRUE,  TRUE, FALSE, FALSE, FALSE)
is.nan(x)       # c(FALSE,  TRUE, FALSE, FALSE, FALSE)
is.finite(x)    # c( TRUE,  TRUE,  TRUE, FALSE, FALSE)
is.infinite(x)  # c(FALSE, FALSE, FALSE,  TRUE,  TRUE)
}\if{html}{\out{</div>}}
}

