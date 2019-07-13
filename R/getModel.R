getModel = function(modelID){
  Files = list.files(system.file("models", package = "jaggR"),
                     pattern = "bug(s[.]R)?")

  if(!any(grep(modelID, Files))){
    stop("I couldn't match your model to any I have stored")
  }

  pat = glue("^model\\-{modelID}[.]")
  i = grep(pat, Files)

  if(length(i) > 1){
    stop("More than one model matches this. Try to be more specific")
  }

  f = system.file("models", Files[i], package = "jaggR")

  Lines = paste(readLines(f), collapse = "\n")
  return(Lines)
}
