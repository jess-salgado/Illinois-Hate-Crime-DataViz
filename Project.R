library(tidyr)
library(dplyr)
library(ggplot2)

hate_crime <- read.csv("hate_crime.csv", stringsAsFactors = FALSE)
#names(hate_crime)

names(illinois_data)

illinois_data <- filter(hate_crime, state_name == "Illinois")

write.csv(illinois_data, file = "illinois_hate_crime.csv", row.names = FALSE)

unique(illinois_data$bias_desc)
unique(illinois_data$offense_name)
illinois_data <- select(illinois_data, -c("incident_id","ori","state_abbr", "population_group_code", "population_group_description", "adult_victim_count", "juvenile_victim_count", "adult_offender_count", "juvenile_offender_count", "offender_ethnicity", "multiple_offense", "multiple_bias"))
