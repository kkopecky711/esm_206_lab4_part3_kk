# ---------------
# Kai Kopecky
# --------------

library(tidyverse)
library(janitor)
library(here)

# Read in data:
db <- read_csv(here("data", "disease_burden.csv")) %>% 
  clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)

# Create a subset, then graph:
db_sub <- db %>% 
  filter(country_name %in% c("United States", "Japan", "Afghanistan", "Somalia"))


