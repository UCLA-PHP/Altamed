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
      shinydashboard::menuItem("Cumulative Charts", tabName = "cumulative"),
      shinydashboard::menuItem("Run Charts", tabName = "run_charts")
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
      run_charts()
      #,
      # 
      #  tabItem(
      #    tabName = "documentation",
      #    uiOutput("tab")
      #  )
    )
  )
  
}

#' Title
#'
#' @param width1 
#'
#' @return
#'

cumulative_vax_rates = function(width1 = 3)
{
  shinydashboard::tabItem(
    tabName = "cumulative",
    h2("Cumulative Vaccination Rates"),
    fluidRow(
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Bell")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of El Monte")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Monterey Park")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of South Gate"))),
    
    fluidRow(
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Bell Gardens")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Huntington Park")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Paramount")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Whittier"))),
    
    fluidRow(
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Commerce")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Lynwood")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Pico Rivera")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative Los Angeles - Boyle Heights"))),
    
    fluidRow(
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Maywood")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Compton")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Rosemead")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative Los Angeles - Florence-Firestone"))),
    
    fluidRow(
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Cudahy")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of Montebello")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative City of South El Monte")),
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "cumulative Unincorporated - East Los Angeles")))
  )
}

run_charts = function(width1 = 8)
{
  shinydashboard::tabItem(
    tabName = "run_charts",
    h2("Counts of New Vaccinations (Dose 1)"),
    selectInput("location", label = "Area", choices = get_communities_list()),
    fluidRow(
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "run City of Bell"))),
    
    fluidRow(
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "run City of Whittier"))),
    
    fluidRow(
      shinydashboard::box(width = width1, plotly::plotlyOutput(outputId = "run Los Angeles - Boyle Heights")))
  )
}