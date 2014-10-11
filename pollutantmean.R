# R Programming
# Week 2
# Programming Assigmment 1: Air Pollution
# Part 1: Pollutantmean

# Set the working directory
setwd("/Users/russ/Documents/Coursera/R_Programming/Week 2")

pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    # Load in the getdata function
    source("getdata.R")
    
    # Load in the pollutant variable from each data file
    data <- numeric(0)
    for (i in id) {
        df <- getdata(directory, i)
        var <- df[[pollutant]] # double brackets to read string as a variable
        data <- c(data, var)
    }  
    
    # Compute the mean
    var.mean <- mean(data, na.rm=TRUE) 
    return(var.mean)
    
}


