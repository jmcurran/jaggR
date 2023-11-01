#' S3 print method for objects of type summary.mcmc
#'
#' This function overrides the hidden method in the \code{coda} package
#' that provides a print method for the output of the \code{\link{coda}{summary}}
#' function. The idea is to be able to suppress some of the output so that
#' only the summary statistics of interest are shown. This is primarily used in the
#' preparation of the book.
#'
#' @param x an object of type \code{summary.mcmc}.
#' @param digits The number of digits to print.
#' @param runDetails if \code{TRUE} print the details of the sampling.
#' @param means if \code{TRUE} print the posterior means.
#' @param quantiles if \code{TRUE} print the posterior quantiles.
#' @param ... other arguments passed to \code{print}.
#'
#' @return x is invisibly returned
#' @export
print.summary.mcmc = function (x, digits = max(3, .Options$digits - 3),
                               runDetails = FALSE,
                               means = FALSE,
                               quantiles = TRUE,
                               ...){

  if(runDetails){
    cat("\n", "Iterations = ", x$start, ":", x$end, "\n", sep = "")
    cat("Thinning interval =", x$thin, "\n")
    cat("Number of chains =", x$nchain, "\n")
    cat("Sample size per chain =", (x$end - x$start)/x$thin +
          1, "\n")
  }

  if(means){
    cat("\n1. Empirical mean and standard deviation for each variable,")
    cat("\n   plus standard error of the mean:\n\n")
    print(x$statistics, digits = digits, ...)
  }

  if(quantiles){
    if(means){
      cat("\n2. Quantiles for each variable:\n\n")
    }else{
      cat("\nQuantiles for each variable:\n\n")
    }

    print(x$quantiles, digits = digits, ...)
    cat("\n")
  }

  invisible(x)
}
