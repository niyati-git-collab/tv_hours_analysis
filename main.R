library(tidyverse)
library(here)

tv_hours_tabulation <- gss_cat %>% 
  filter(age < 30) %>%  
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE))
tv_hours_tabulation

write_csv(tv_hours_tabulation, here("TV_hours_by_Marital.csv"))
