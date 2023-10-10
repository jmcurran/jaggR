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
