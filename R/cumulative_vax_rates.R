#' build cumulative vax rates tab
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