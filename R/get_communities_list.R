#' Provides the list of AltaMed communities
#'
#' @return  the list of AltaMed communities
#' @export
#'

get_communities_list = function()
{
  cities0 = c("Bell", "El Monte", "Monterey Park", "South Gate",
              "Bell Gardens", "Huntington Park", "Paramount", "Whittier",
              "Commerce", "Lynwood", "Pico Rivera",
              "Compton", "Maywood", "Rosemead",
              "Cudahy", "Montebello", "South El Monte")
  
  cities = paste("City of", cities0)
  
  hoods0 = c(
    "Florence-Firestone",
    "Boyle Heights")
  
  neighborhoods = paste("Los Angeles -", hoods0)
  
  uic0 = "East Los Angeles"
  unincorporated = "Unincorporated - East Los Angeles"
  
  communities = c(cities, neighborhoods, unincorporated)
  names(communities) = c(cities0, hoods0, uic0)
  
  return(communities)
}