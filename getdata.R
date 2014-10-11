# Week 2 helper function
# Load pollutant data file

# Set the working directory
setwd("/Users/russ/Documents/Coursera/R_Programming/Week 2")

getdata <- function(directory, id) {
    
    # Add leading zeroes to id as required
    if (id < 10) {
        id <- paste('00',id, sep='')
    } else if (id >= 10 & id < 100) {
        id <- paste('0',id, sep='')
    }  
    
    # Read in the CSV file, convert to data frame
    df <- read.csv(paste(directory,'/',id,'.csv', sep=''))
    df <- as.data.frame(df)
    
}