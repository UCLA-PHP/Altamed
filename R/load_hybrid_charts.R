#' Title
#'
#' @param places 
#'
#' @return
#' @export
#'
load_hybrid_charts = function(
  places = names(get_communities_list())
)
{
  
  case_data =  hybrid.charts.la::load_and_format_CSA_case_data()
  
  charts = list()
  
  
  for (adjust in c("adjusted", "raw"))
  {
    for (place in places)
    {
      
      charts[[adjust]][[place]] = 
        hybrid.charts.la::build_hybrid_chart(
          data = case_data,
          adjust = adjust == "adjusted",
          community = place)
      
    }
  }
  
  return(charts)
  
}