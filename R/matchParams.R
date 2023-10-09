# A function for matching a parameter pattern with a list of possible parameters

# matchParams("b0", c("b0", "b1", "b2", "sigma")) - should return 1
# matchParams("b.", c("b0", "b1", "b2", "sigma")) - should return 1 2 3
# matchParams("b[1-2]", c("b0", "b1", "b2", "sigma")) - should return 2 3
# matchParams(c("b0", "b1"), c("b0", "b1", "b2", "sigma")) - should return 1 2
# matchParams(c("b0", "b1", "b4"), c("b0", "b1", "b2", "sigma")) - should fail because b4 doesn't match
# matchParams(c("b0", "b."), c("b0", "b1", "b2", "sigma")) - should return 1 2 3 not 1 1 2 3 as it looks for unique matches

matchParams = function(params, paramList){
  
  whichMatch = function(r){
    ## how many parameters does params match?
    numMatchingParams = sum(r)
    
    if(numMatchingParams == 0){
      return(-1) 
    }else{
      return(which(r)) ## these should be unique
    }
  }
  
  numParams = length(paramList)
  
  m = if(length(params) == 1){
    grepl(params, paramList)
  }else{
    lapply(params, grepl, x = paramList)
  }
  
  
  
  if(is.list(m)){
    m1 = lapply(m, whichMatch)
    
    ## firstly check if there were any failures
    fail = any(sapply(m1, function(results)any(results == -1)))
    
    if(fail){
      failures = which(sapply(m1, function(results)any(results == -1)))
      stop(paste0("Could not find pattern(s) \"", 
                  paste0(params[failures], collapse = ", \""),
                  "\" in parameter list"))
    }
    
    ## Assuming there are not, collapse the results (in case of non-unique requests)
    
    return(unique(unlist(m1)))
  }else{
    return(whichMatch(m))
  }
}
  


