#' Reorder the columns of mcmc objects in an mcmc.list
#'
#' Reorders the output from \code{\link{rjags}{coda.samples}} to match
#' the preferred order of the user. The function will stop if one or more of the
#' specified variable names does not match the variable names in the first
#' \code{mcmc} object of \code{x}.
#'
#' @param x an object of type \code{mcmc.list}
#' @param variable.names a vector of variable names in user order.
#' @param ... other arguments. Currently ignored.
#'
#' @return an object of type \code{mcmc.list}
#' @export
reorder.mcmc.list = function(x, variable.names, ...){
  ## first check if the variable names match
  o = match(variable.names, colnames(x[[1]]))

  if(any(is.na(o))){
    i = which(is.na(o))
    cat("Cannot match variable(s):\n")
    cat(paste(variable.names[i], collapse = " "), "\n\n")
    stop()
  }else{
    for(i in seq_along(x)){
      x[[i]] = x[[i]][ ,o]
    }
    return(x)
  }
}
