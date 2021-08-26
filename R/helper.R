#' Title
#'
#' @return
#' @export
#'

sidebar = function()
{
  shinydashboard::dashboardSidebar(
    shinydashboard::sidebarMenu(
      id = "tabs",
      shinydashboard::menuItem("Cumulative Charts", tabName = "cumulative")
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
      shinydashboard::tabItem(
        tabName = "cumulative",
        h2("Cumulative Vaccination Rates"),
        fluidRow(
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Bell")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of El Monte")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Monterey Park")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of South Gate"))),
        
        fluidRow(
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Bell Gardens")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Huntington Park")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Paramount")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Whittier"))),
        
        fluidRow(
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Commerce")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Lynwood")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Pico Rivera")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "Los Angeles - Boyle Heights"))),
        
        fluidRow(
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Maywood")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Compton")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Rosemead")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "Los Angeles - Florence-Firestone"))),
        
        fluidRow(
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Cudahy")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of Montebello")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "City of South El Monte")),
          shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "Unincorporated - East Los Angeles")))
      )#,
      # 
      #  tabItem(
      #    tabName = "documentation",
      #    uiOutput("tab")
      #  )
    )
  )
  
}
