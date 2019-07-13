tidy_bugs = function(path = "."){
  arrow = TRUE
  brace.newline = FALSE
  indent = 2

  Files = list.files(path, pattern = "[.]bug(s[.]R)?$", full.names = TRUE)

  for(f in Files){
    Lines = readLines(f)

    bData = any(grepl("^data(|[ {]*(.*[}])?)$", Lines))
    bModel = any(grepl("^model[ {]*$", Lines))

    dataLine = if(bData){grep("^data(|[ {]*(.*[}])?)$", Lines)}else{NA}
    modelLine = if(bModel){grep("^model[ {]*$", Lines)}else{NA}

    print(glue("File: {f} model: {modelLine} data: {dataLine}"))

    if(bData){
      Lines[dataLine] = sub("data", "", Lines[dataLine])
    }

    if(bModel){
      Lines[modelLine] = sub("model", "", Lines[modelLine])
    }

    writeLines(Lines, "temp_in.R")
    tidy_source(source = "temp_in.R", file = "temp_out.R",
                arrow = arrow, brace.newline = brace.newline,
                indent = indent)

    Lines = readLines("temp_out.R")
    blocks = grep("^[{]$", Lines)
    numBlocks = length(blocks)

    if(bData && bModel){
      if(numBlocks == 2){
        Lines[blocks[1]] = "data{"
        Lines[blocks[2]] = "model{"
        writeLines(Lines, f)
      }else{
        stop(glue("I couldn't handle {f}"))
      }
    }else if(!bData && bModel){
      if(numBlocks == 1){
        Lines[blocks] = "model{"
        writeLines(Lines, f)
      }else{
        stop(glue("I couldn't handle {f}"))
      }
    }else{
      stop(glue("The file {f} doesn't contain a model block"))
    }

    if(file.exists("temp_in.R")){
      file.remove("temp_in.R")
    }

    if(file.exists("temp_out.R")){
      file.remove("temp_out.R")
    }

  }
}
