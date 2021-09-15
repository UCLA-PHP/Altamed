

#' build run charts tab
#'
#' @return


run_charts = function()
{
  communities_list = get_communities_list()
  shinydashboard::tabItem(
    tabName = "run_charts",
    h2("Counts of New Vaccinations (Dose 1)"),
    
    
    shinydashboard::box(width = 6, 
                        selectInput(
                          "run_chart_location", 
                          label = NULL,
                          choices = communities_list),
                        plotly::plotlyOutput(outputId = "run_charts")),
    shinydashboard::box(width = 6, 
                        selectInput(
                          "run_chart_location2", 
                          label = NULL,
                          choices = communities_list, 
                          selected = communities_list[2]),
                        plotly::plotlyOutput(outputId = "run_charts2"))
    
  )
}