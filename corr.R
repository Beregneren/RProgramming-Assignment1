# R Programming
# Week 2
# Programming Assigmment 1: Air Pollution
# Part 3: Correlations

# Set the working directory
setwd("/Users/russ/Documents/Coursera/R_Programming/Week 2")

corr <- function(directory, threshold = 0) {
    
    # Read in the getdata and complete functions
    source("getdata.R")
    source("complete.R")
    
    # Select files with complete cases higher than the threshold
    all.files <- complete(directory, id = 1:332)
    required.files <- subset(all.files, all.files$nobs > threshold)
    id <- required.files$id
    
    # Compute the correlations
    output <- numeric(0)
    for (i in id) {
        df <- getdata(directory, i)
        pairwise.corr <- cor(df$nitrate, df$sulfate, 
                             use = "pairwise.complete.obs")
        output <- c(output, pairwise.corr)
    } 
    
    return(output)
    
}