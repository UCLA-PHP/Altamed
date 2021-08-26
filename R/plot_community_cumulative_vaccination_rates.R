
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
  current_community_data = data1 %>% 
    filter(Community == community_name) %>%
    arrange(`Date (Dose 1)`)
  
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
  
  
  plot1 = plotly::plot_ly(
    current_community_data,
    x = ~`Date (Dose 1)`
  ) %>% 
    plotly::add_trace(
      type = "scatter",
      mode = "lines+Markers",
      name = "65+",
      y = useful::build.formula(lhs = NULL, rhs = "pct65")
    ) %>%
    plotly::add_trace(
      type = "scatter",
      mode = "lines+Markers",
      name = "16-64",
      y = useful::build.formula(lhs = NULL, rhs = "pct16-64")
    ) %>% 
    plotly::add_trace(
      type = "scatter",
      mode = "lines+Markers",
      name = "12-17",
      y = useful::build.formula(lhs = NULL, rhs = "% vaccinated 12-27")
    ) %>% 
    plotly::layout(
      legend = legendstats,
      title = community_name,
      yaxis = list(
        range = c(0,100),
        title = "% vaccinated (dose 1)"
      ),
      xaxis = list(
        title = ""
      )
    )
  
  return(plot1)
  
}