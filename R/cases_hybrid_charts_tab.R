cases_hybrid_charts_tab = function()
{
  communities_list = get_communities_list()
  shinydashboard::tabItem(
    tabName = "hybrid_charts_cases",
    h2("Counts of New Cases"),
    
    
    shinydashboard::box(width = 6, 
                        selectInput(
                          "case_chart_loc1", 
                          label = NULL,
                          choices = names(communities_list)),
                        checkboxInput("adjust_case_chart1", "Adjusted?"),
                        plotly::plotlyOutput(outputId = "case_chart1")),
    shinydashboard::box(width = 6, 
                        selectInput(
                          "case_chart_loc2", 
                          label = NULL,
                          choices = names(communities_list), 
                          selected = names(communities_list)[2]),
                        checkboxInput("adjust_case_chart2", "Adjusted?"),
                        plotly::plotlyOutput(outputId = "case_chart2")),
    
    p("Data from https://github.com/datadesk/california-coronavirus-data"),
    p("Hybrid charts adapted from https://github.com/klittle314/COVID_control_chart_public")
    
  )
}