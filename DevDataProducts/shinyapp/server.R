library(shiny)

shinyServer(
    function(input, output) {

        paymentCalculator <- reactive({
            invoicePrice = input$msrp - input$discount
            moneyFactor = input$interestRate / 2400
            residual = input$residualValue / 100
            
            # Step 1: what will the car be worth
            futureValue = input$msrp * residual
            
            # Step 2: leased value of the car
            leasedValue = invoicePrice - futureValue
            
            # Step 3: monthly lease payment
            leasePayment = leasedValue / input$leaseTerm + (invoicePrice + futureValue) * moneyFactor        
            paste("Your payment is $", round(leasePayment, 2), ".", sep = "")
        })
    
        output$paymentText = renderText({
            paymentCalculator()
        })
    })
