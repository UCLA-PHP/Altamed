
#' Title Build run charts
#'
#' @param community_name 
#' @param dataset 
#' @param current_community_data 
#'
#' @return run chart
#' @export
#'

run_chart = function(
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
      x = ~`Date`,
      type = "scatter",
      mode = "lines+markers",
      name = "65+",
      marker = list(size = size1),
      y = useful::build.formula(lhs = NULL, rhs = "new vax 65+")
    )
  
  plot2 = 
    plotly::plot_ly(
      current_community_data,
      x = ~`Date`,
      type = "scatter",
      mode = "lines+markers",
      marker = list(size = size1),
      name = "18-64",
      y = useful::build.formula(lhs = NULL, rhs = "new vax 18-64")
    )
  plot3 = 
    plotly::plot_ly(
      current_community_data,
      x = ~`Date`,
      type = "scatter",
      mode = "lines+markers",
      marker = list(size = size1),
      name = "12-17",
      y = useful::build.formula(lhs = NULL, rhs = "new vax 12-17")
    )
  
  
  fig = plotly::subplot(plot1, plot2, plot3, nrows = 3, shareX  = TRUE) %>%
    plotly::layout(
      legend = legendstats,
      title = paste("Number of", community_name, "residents receiving Dose 1 each day"),
      yaxis = list(
        # range = c(0,100),
        # rangemode
        title = "# residents"
      ),
      xaxis = list(
        title = ""
      )
    )
  
  return(fig)
  
}
