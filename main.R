library(tidyverse)
library(here)

gss_cat
gss_cat %>%
  group_by(marital) %>%
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))

tv_hours_table <- gss_cat %>%
  filter(age >= 30) %>% 
  group_by(marital) %>%
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))

write_csv(tv_hours_table, here("TV_Hours_By_MaritalStatus.csv") )

