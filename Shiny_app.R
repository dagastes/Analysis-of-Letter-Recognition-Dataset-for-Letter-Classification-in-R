library(shiny)
library(ggplot2)
library(corrplot)

ed<-read.csv("Master Data.csv", stringsAsFactors = FALSE)

df <- data.frame(Letter = c("A","B","C","D","E","F","G","H","I",
                         "J","K","L","M","N","O","P","Q","R",
                         "S","T","U","V","W","X","Y","Z"),
                 Count = c(789,766,736,805,768,775,773,734,755,747,
                    739,761,792,783,753,803,783,758,748,796,
                        813,764,752,787,786,734)
)

ui<-fluidPage (
  
  tags$head(tags$style(
    HTML('
         sidebar {
         background-color: blue;
         }
         
         body, label, input, button, select { 
         font-family: "Arial";
         }')
  )),
  
  headerPanel("CSI 703 Project"),
  headerPanel("Letter Recognition DataSet"),
  sidebarLayout(
    sidebarPanel(
      h4("Histogram and Boxplot"),
      selectInput("var", "Select Variable", choices=colnames(ed[2:17]), 
                selected = NULL),
      br(),
      h4("Scatterplot"),
       selectInput("var1", "Select Variable For X-axis", choices=colnames(ed[2:17]), 
                    selected = NULL),
      selectInput("var2", "Select Variable For Y-axis", choices=colnames(ed[2:17]), 
                  selected = NULL)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Count of Letters",plotOutput(outputId = "bar",width="500px",height="500px"),dataTableOutput('table')),
        tabPanel("Histogram",plotOutput(outputId = "hist",width="600px",height="500px")),
        tabPanel("Boxplot",plotOutput(outputId = "boxplot",width="500px",height="500px"),verbatimTextOutput("results")),
        tabPanel("Scatterplot",plotOutput(outputId = "scatter",width="700px",height="500px"))
        )
      )
    )
  )

server <- function(input, output) {
  
  output$table <- renderDataTable(df,options = list(pageLength=5))
  
  output$bar <- renderPlot({
    ggplot(data=df,aes(x=Letter,y=Count,width=.75)) + geom_bar(position="dodge",stat="identity",fill="steelblue") + coord_flip()+ geom_text(aes(label=Count), vjust=-0.3,hjust=0, size=3.5)
  })
  
  output$hist <- renderPlot({
     ggplot(ed, aes(ed[,input$var])) +
      geom_histogram(breaks=seq(0,15,by=1),fill="orange",color="black")+
      labs(x= colnames(ed[,input$var]),y="Count") 
  })
  
  output$boxplot <- renderPlot({
    ggplot(ed, aes(x="",y=(ed[,input$var]))) +
      geom_boxplot(fill = "#56B4E9", color = "black",width=0.5)+
      labs(x= colnames(ed[,input$var]),y="Count")
  })
  
  output$results <- renderPrint({
    summary(ed[,input$var])
  })

  output$scatter <- renderPlot({
    qplot(ed[,input$var1],ed[,input$var2],data=ed,color=Letter) + labs(x= ed[0,input$var1],y=ed[0,input$var2])
    
  })  
  
}

shinyApp(ui = ui, server = server)
