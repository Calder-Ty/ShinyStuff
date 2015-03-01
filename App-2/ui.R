shinyUI(fluidPage(
  titlePanel("Clasical Economists"),
  
  sidebarLayout(
    sidebarPanel( "David Ricardo"),
    mainPanel(
      h3("Introduction", align = "center"),
      p("The Classical School of Economics, refers to a school of economic thought
        that began with Adam Smith and ended with the Marginal Revolution."),
      br(), 
      p("Classical Economic Thought was characterized by a debates over Value Theory
          though most classical economists were Labor Theorists. Perhaps the most
          prolific of the classical economists was David Ricardo, who's most important
          Theories were his Thoeries of Rent, and Comparative Advantage"),
      h3("Ricardo's Theory of Rent", align = "center"),
      p("Ricardo's Theory of Rent was his attempt at writing a capital theory,
        Ricardo's theory said that rents (and by continuation profits) originated
        in the productive differences of lands. Because land has varying productive
        capacities, Landlords could only charge varying amounts of rent based of the
        prospective profits that farmers could make (wich would vary with the 
        productive capacity of the Land."),
      br(),
      h3("Comparative Advantage", align ="center"),
      p("Ricardo's Theory of Comparative advantage was an important part of Ricardos
        arguments with Thomas Malthus. The Theory showed that it is always profitable
        for countries (and people at that matter) to engage in trade, when each country
        focuses on producing what it is relativly more able to produce. The Theory
        remains a staple of International Economics today.")
      ))
  )
  
)