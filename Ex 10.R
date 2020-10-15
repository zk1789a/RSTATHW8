weather %>% pivot_longer(cols = starts_with("d"), names_to = "day", names_pattern = "d(.*)", values_to = "value") %>% 
  na.omit() %>% 
  pivot_wider(names_from = element, values_from = value)