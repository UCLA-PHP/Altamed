
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
            data = LA.Vax.Data::la.vax,
            community_name = i))
      
    }
  )
  
  output$run_charts = plotly::renderPlotly(
    run_chart(
      data = LA.Vax.Data::la.vax,
      community_name = input$run_chart_location))
  
  output$run_charts2 = plotly::renderPlotly(
    run_chart(
      data = LA.Vax.Data::la.vax,
      community_name = input$run_chart_location2))
    
  
  case_data =  hybrid.charts.la::load_and_format_CSA_case_data()
  
  output$case_chart1 = plotly::renderPlotly(
    hybrid.charts.la::build_hybrid_chart(
      data = case_data,
      adjust = input$adjust_case_chart1,
      community = input$case_chart_loc1)
    
    )
  
  output$case_chart2 = plotly::renderPlotly(
    hybrid.charts.la::build_hybrid_chart(
      data = case_data,
      adjust = input$adjust_case_chart2,
      community = input$case_chart_loc2)
    
  )
  

}
