funnel_chart = function(
  dataset,
  age_group = "16-64",
  date = max(dataset$`Date (Dose 1)`)
  )
{
  
  X_name = paste("Cumulative", age_group, "(Dose 1)")
  N_name = paste("Population (", age_group, ")", sep = "")
  
  dataset %<>% filter(`Date (Dose 1)` == date)
  
  X = dataset[[X_name]]
  N = dataset[[N_name]]
  p = X/N
  
  data1 = tibble(
    X,
    N,
    p,
    Community = dataset$Community
  )
  
  
  p_bar = sum(X)/sum(N)
  sigma_P = sqrt(p_bar * (1 - p_bar) / N)
  UL = (p_bar + 3 * sigma_P)
  LL = (p_bar  - 3 * sigma_P)
  
  data2 = tibble(
    N,
    p,
    UL,
    LL) %>%
     arrange(N)
  
  
  
}