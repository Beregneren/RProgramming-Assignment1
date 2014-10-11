# R Programming
# Week 2
# Programming Assigmment 1: Air Pollution
# Part 2: Complete

# Set the working directory
setwd("/Users/russ/Documents/Coursera/R_Programming/Week 2")

complete <- function(directory, id = 1:332) {
    
    # Read in the getdata function
    source("getdata.R")
    
    # Get the number of complete cases for each of the files
    nobs <- numeric(0)
    for (i in id) {
        df <- getdata(directory, i)
        casecount <- complete.cases(df)
        total <- sum(casecount)
        nobs <- c(nobs, total)
    }
    
    # Put the output in a data frame
    output <- data.frame(id = id, nobs = nobs)
    return(output)
    
}