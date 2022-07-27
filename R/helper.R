#' Title
#'
#' @return a sidebar
#' @export
#'

sidebar = function()
{
  shinydashboard::dashboardSidebar(
    shinydashboard::sidebarMenu(
      id = "tabs",
      shinydashboard::menuItem("Cumulative Charts: Vaccination", tabName = "cumulative"),
      shinydashboard::menuItem("Run Charts: Vaccination", tabName = "run_charts"),
      shinydashboard::menuItem("Run Charts: Cases", tabName = "hybrid_charts_cases")
      
      # menuItem("Graphs", tabName = "graphs")#,
      #menuItem("Documentation", tabName = "documentation")
    )
  )
}


#' Title
#'
#' @param width1 
#'
#' @return
#' @import shiny
#' @export
#'

body = function(width1 = 3)
{
  shinydashboard::dashboardBody(
    shiny::tags$head(tags$style(HTML(".shiny-notification {position: fixed; top: 15% ;left: 1%;"))),
    shinydashboard::tabItems(
      cumulative_vax_rates(width1 = width1),
      run_charts(),
      cases_hybrid_charts_tab()
      #,
      # 
      #  tabItem(
      #    tabName = "documentation",
      #    uiOutput("tab")
      #  )
    )
  )
  
}



