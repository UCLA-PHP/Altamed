
#' Title
#'
#' @param community_name 
#' @param current_community_data 
#' @param legendstats 
#'
#' @return
#' @importFrom useful build.formula
#' @export
#'
plot_community_vaccination_rates = function(
  community_name,
  dataset,
  current_community_data = dataset %>% 
    filter(Community == community_name) %>%
    arrange(`Date`)
  
)
{
  
  require(plotly)
  
  
  legendstats = list(
    x = 0.2,
    y = -.1,
    orientation = 'h',
    font = list(
      family = "sans-serif",
      size = 12,
      color = "#000")
  )
  
  size1 = 4
  
  plot1 = plotly::plot_ly(
    current_community_data,
    x = ~`Date`
    # marker = list(size = 8)
  ) %>% 
    plotly::add_trace(
      type = "scatter",
      mode = "lines+markers",
      name = "65+",
      marker = list(size = size1),
      y = useful::build.formula(lhs = NULL, rhs = "pct65")
    ) %>%
    plotly::add_trace(
      type = "scatter",
      mode = "lines+markers",
      name = "18-64",
      marker = list(size = size1),
      y = useful::build.formula(lhs = NULL, rhs = "pct18-64")
    ) %>% 
    plotly::add_trace(
      type = "scatter",
      mode = "lines+markers",
      name = "12-17",
      marker = list(size = size1),
      y = useful::build.formula(lhs = NULL, rhs = "% vaccinated 12-17")
    ) %>% 
    plotly::layout(
      legend = legendstats,
      title = community_name,
      yaxis = list(
        range = c(0,100),
        title = "% vaccinated (Dose 1+)"
      ),
      xaxis = list(
        title = ""
      )
    )
  
  return(plot1)
  
}
