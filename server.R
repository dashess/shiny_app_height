library(shiny)
library(UsingR)
library(ggplot2)

data <- galton
data$child <- data$child * 2.54
data$parent <- data$parent * 2.54

shinyServer(function(input, output) {
        output$distPlot <- renderPlot({
                fit <- lm(child ~ parent, data = data)
                pred <- predict(fit, data.frame(parent = input$parentHeight))
                
                plot <- ggplot(data = data, aes(x = data$parent, y = data$child)) +
                                geom_point() +
                                geom_smooth(method = "lm") +
                                geom_vline(xintercept = input$parentHeight, color = "red")+
                                geom_hline(yintercept = pred, color = "green") +
                                xlab("Parent Height") + ylab("Child Height")
                plot
                })
        output$childHeight <- renderText({
                fit <- lm(child ~ parent, data = data)
                pred <- predict(fit, data.frame(parent = input$parentHeight))
                calc <- paste(round(pred, 2), "CM")
                })
        })