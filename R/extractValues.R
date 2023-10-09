#' Extract sampled parameter values from an mcmc.list
#'
#' This function makes it easy to extract sampled values of one or more parameters.
#' The function can extract multiple parameters from multiple chains
#'
#' @param x an object of class mcmc.list - usually from \code{coda.samples}
#' @param params a vector of one or more strings OR regular expressions which identifies the parameters
#' we want to extract from the chain
#' @param chain the chain, or chains we want to extract the parameters from. If \code{chain} is \code{NULL} then
#' the values will be extracted from all chains.
#' @param drop used to preserve the dimensions of an array. If a single parameter is requested, then the results
#' will be returned as a vector rather than a matrix if \code{drop == TRUE}.
#' @param ... any other arguments. Not used yet.
#'
#' @return If there is only one chain or the user asks for results from exactly one chain, then a matrix with class mcmc will be returned
#' containing only the parameters of interest in the columns. The column names of the matrix will correspond to the parameter. If there is
#' more than one chain, and the user asks for results from more than one chain, or alternatively leaves \code{chain} as \code{NULL}, then
#' a list of matrices with class mcmc will be returned where each matrix contains only the parameters of interest in the columns.
#' The column names of each of the matrices will correspond to the parameter.
#' @export
extractValues = function(x, params, chain = NULL, drop = TRUE, ...){
  if(class(x) != "mcmc.list"){
    stop("x should be of class 'mcmc.list'")
  }


  result = if(!is.null(chain)){
    nChains = length(x)

    if(any(chain < 1) || any(chain > nChains)){
      if(nChains == 1){
        stop("There is only one chain in this list therefore chain must either be 1 or NULL")
      }else{
        stop(paste0("chain should be a value between 1 and ", nChains))
      }
    }


    # Discard the other chains
    x = x[chain]

    # Get the parameter names from the first chain
    paramNames = colnames(x[[1]])

    m = matchParams(params, paramNames)

    lapply(x, function(mcmc){
      mcmc[,m, drop = drop]
    })
  }else{
    # get the parameter names from the first chain
    paramNames = colnames(x[[1]])

    m = matchParams(params, paramNames)

    lapply(x, function(mcmc){
      mcmc[,m, drop = drop]
    })
  }

  if(length(result) == 1){
    result = result[[1]]
  }else{
    names(result) = paste0("Chain ", 1:length(result))
  }

  return(result)
}
