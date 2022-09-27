library(tidyverse)

butterfly_data <- read_csv("../data/Butterfly_data.csv")

grouped_data <- function(dataset = butterfly_data){
  new_butterfly_data <- butterfly_data %>% 
    group_by(ButterflySpecies)
  return(new_butterfly_data)
}