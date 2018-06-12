library(markdown)
shinyUI(navbarPage("Calculate The Height of Your Child",
                   tabPanel("Height",
                            sidebarLayout(
                                    sidebarPanel(
                                            h4("Your Midparent Height:"),
                                            helpText("The midparent's height is an average of the fathers height and 1.08 times the mother's"),
                                            numericInput('parentHeight', 'Height in Centimeters:', 174, min = 162, max = 186)
                                            ),
                                    mainPanel(
                                            plotOutput("distPlot"),
                                            h4("Predicted Height of Your Child is:"),
                                            h3(textOutput("childHeight"))
                                            )
                                    )
                            ),
                   tabPanel("About",
                            mainPanel(
                                    includeMarkdown("about.md")
                                    )
                            )
                   ))   