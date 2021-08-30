
server <- function(input, output, session) 
{
  
  communities = get_communities_list()
  
  lapply(
    X = communities,
    function(i)
    {
      output[[paste("cumulative", i)]] = 
        plotly::renderPlotly(
          plot_community_vaccination_rates(
            data = data1,
            community_name = i))
      
    }
  )
  
  lapply(
    X = communities,
    function(i)
    {
      output[[paste("run", i)]] = 
        plotly::renderPlotly(
          run_chart(
            data = data1,
            community_name = i))
      
    }
  )

}
