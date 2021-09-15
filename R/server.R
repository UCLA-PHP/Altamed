
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
            data = vax_by_CSA,
            community_name = i))
      
    }
  )
  
  output$run_charts = plotly::renderPlotly(
    run_chart(
      data = vax_by_CSA,
      community_name = input$run_chart_location))
  
  output$run_charts2 = plotly::renderPlotly(
    run_chart(
      data = vax_by_CSA,
      community_name = input$run_chart_location2))
    
  
  
  output$case_chart1 = plotly::renderPlotly(
    hybrid_charts[[
      # "adjusted"
      ifelse(input$adjust_case_chart1, "adjusted", "raw")
      ]][[
      input$case_chart_loc1
        # "Bell"
    ]])
  
  output$case_chart2 = plotly::renderPlotly(
    hybrid_charts[[
      # "adjusted"
      ifelse(input$adjust_case_chart2, "adjusted", "raw")
      ]][[
      input$case_chart_loc2
        # "El Monte"
    ]])
  

}
