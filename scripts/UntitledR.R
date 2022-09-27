calc_density <- function(length, width, height){
  volume <- calc_vol(length, width, height)
  mass <- calc_mass(volume)
  density <- mass/volume
  density < - round(density, 3)
  if (density < volume){
    return(density)
  } else {
    print("Density greater than volume! Check your inputs.")
  }
}

data_cleaning <- function(filepath){
  data_raw <- read_csv(filepath)
  data_clean <- data_raw %>% 
    drop_na()
  if(sum(is.na(d_c)) == 0){
    return(data_clean)
  } else {
    print("NAs still present!")
  }
}
