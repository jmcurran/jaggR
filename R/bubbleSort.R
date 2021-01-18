#' Bubble sort
#'
#' Sorts the vector x into ascending order using a very inefficient bubble sort algorithm
#'
#' @param x a vector of numbers
#'
#' @return the vector \code{x} sorted into ascending order
#' @export
#'
#' @examples
#' set.seed(123)
#' x = rnorm(10)
#' bubbleSort(x)
bubbleSort = function(x){
  n = length(x)

  for(j in 1:(n - 1)){
    for(i in 1:(n - j)){
      if(x[i] > x[i + 1]){
        tmp  = x[i]
        x[i] = x[i + 1]
        x[i + 1] = tmp
      }
    }
  }
  return(x)
}
