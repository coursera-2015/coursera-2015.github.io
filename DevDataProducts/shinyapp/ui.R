library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Car Lease Payment Calculator"),
    sidebarPanel(
        helpText("Adjust the values to determine the payment amount."),

        sliderInput('msrp', 'MSRP of the vehicle ($)', 
                    value = 23000, min = 15000, max = 50000, step = 1000,),
        sliderInput('interestRate', 'Interest rate for the lease (%)', 
                    value = 3, min = 1, max = 7, step = .25,),
        sliderInput('leaseTerm', 'Lease term (months)', 
                    value = 36, min = 12, max = 60, step = 6,),
        sliderInput('residualValue', 'Residual value of the car (%)', 
                    value = 57, min = 30, max = 70, step = -1)
    ),
    mainPanel(
        numericInput("discount", "Dealer discount, incentive, down payment or trade-in amount ($, optional)", 3000),
        
        h3(textOutput("paymentText")),
        br(),
        helpText("Note: The discount amount must be less than the MSRP,",
                "the payment will not be correct otherwise (could be negative).")
    )
))
