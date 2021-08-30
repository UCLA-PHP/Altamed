#' Provides the list of AltaMed communities
#'
#' @return  the list of AltaMed communities
#' @export
#'

get_communities_list = function()
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
  
  return(communities)
}