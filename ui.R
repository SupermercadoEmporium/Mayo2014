library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux[3:40]), tableOutput("mayo")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux[3:40]), tableOutput("mayo2"))
    
    
  ),
  
  titlePanel("Mayo"),
  sidebarLayout(
    sidebarPanel( "Resumen Mayo",
                  style = "color:#2183dd;",
                  tableOutput("confidencemayo"),
                  tableOutput("liftmayo")
    ),
    mainPanel()
 
  ),
  
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1mayo"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1mayo"),
                  textOutput("tablanamecat2mayo"),
                  textOutput("tablaprobcat2mayo"),
                  textOutput("tablanamecat3mayo"),
                  textOutput("tablaprobcat3mayo"),
                  textOutput("tablanamecat4mayo"),
                  textOutput("tablaprobcat4mayo"),
                  textOutput("tablanamecat5mayo"),
                  textOutput("tablaprobcat5mayo")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1mayo"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1mayo"),
                  textOutput("tabla1namecat2mayo"),
                  textOutput("tabla1probcat2mayo"),
                  textOutput("tabla1namecat3mayo"),
                  textOutput("tabla1probcat3mayo"),
                  textOutput("tabla1namecat4mayo"),
                  textOutput("tabla1probcat4mayo"),
                  textOutput("tabla1namecat5mayo"),
                  textOutput("tabla1probcat5mayo"))
  )
  
  
))
