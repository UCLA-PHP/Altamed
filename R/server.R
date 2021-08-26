
server <- function(input, output, session) 
{
  cities = 
    paste(
      "City of",
      c("Bell", "El Monte", "Monterey Park", "South Gate",
        "Bell Gardens", "Huntington Park", "Paramount", "Whittier",
        "Commerce", "Lynwood", "Pico Rivera",
        "Compton", "Maywood", "Rosemead",
        "Cudahy", "Montebello", "South El Monte"))
  
  neighborhoods = paste(
    "Los Angeles -", 
    c(
      "Florence-Firestone",
      "Boyle Heights"
      
    )
  )
  
  unincorporated = "Unincorporated - East Los Angeles"
  
  communities = c(cities, neighborhoods, unincorporated)
  
  lapply(
    X = communities,
    function(i)
    {
      output[[i]] = 
        plotly::renderPlotly(
          plot_community_vaccination_rates(
            community_name = i))
      
    }
  )

}
