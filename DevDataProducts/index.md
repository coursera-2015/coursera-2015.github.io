---
title       : Calculate Your Own Car Lease Payment
subtitle    : Developing Data Products Course Project
author      : Johns Hopkins University Data Science Specialization
job         : Author is coursera-2015

framework   : io2012                    # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js              # {highlight.js, prettify, highlight}
hitheme     : tomorrow                  # 
widgets     : [quiz, bootstrap]         # {mathjax, quiz, bootstrap}
mode        : selfcontained             # {standalone, draft}
knit        : slidify::knit2slides
---

## Calculating a Monthly Lease Payment

Most car shoppers have no idea what a good lease payment is for a car they're considering. They need a benchmark to guide them through the shopping process: something to shoot for as they get lease quotes from different dealerships. 

Once you collect some basic financial information about the car you want to lease, and current interest rates, it's possible to calculate your own monthly payment.

Using this application you can calculate such a lease payment with the formula described later in this presentation. 

Source: [Edmonds.com](http://www.edmunds.com)

--- 

## Data That You Will Need

To calculate a bottom-line lease payment, you will need to gather several figures:

1. **MSRP of the vehicle.** Also called the sticker price. 

2. **The money factor.** This is the interest rate on which the lease is based. It's sometimes called a lease factor or even a lease fee. To get the money factor, call the dealer or get the information from your credit union. A common interest rate is 3 percent and as a money factor, this would be 0.00125. (Here's a handy tip: To convert interest rates to money factors, divide the interest rate by 2,400. To convert money factors to interest rates, multiply by 2,400.)

3. **Lease term.** It is recommended that you lease for 36 months or less.

4. **Residual value of the car.** Look up your car's residual value. Or call the bank or dealer and ask for the vehicle's residual value. As a rough guide, most cars have a residual value of between 45 and 60 percent for a 36-month lease. 


--- 

## Calculating a Sample Car Lease Payment

In the following example, let's assume you negotiated the car's sticker price of $23,000 down to $20,000. Also assume that the interest rate is 3% and the residual value is 57%. So what would the monthly payments be on a three-year lease?


```r
msrp = 23000; invoicePrice = msrp - 3000; leaseTerm = 36; residualValue = 0.57
interestRate = 0.03; moneyFactor = interestRate / 24

# Step 1: what will the car be worth
futureValue = msrp * residualValue

# Step 2: leased value of the car
leasedValue = invoicePrice - futureValue

# Step 3: monthly lease payment
leasePayment = leasedValue / leaseTerm + (invoicePrice + futureValue) * moneyFactor
```

Your monthly lease payment would be $232.78.

--- 

## Project Details

A simple Shiny application has been built and published that can generate a monthly car lease payment using the calculations presented here.

You can view the application on shinyapps.io at [DevDataProducts](https://coursera-2015.shinyapps.io/DevDataProducts)

You can view the source for the application and this presentation on GitHub at [DevDataProducts](https://github.com/coursera-2015/coursera-2015.github.io/tree/master/DevDataProducts).  (Note: The source for the Shiny app is in the [Shinyapp](https://github.com/coursera-2015/coursera-2015.github.io/tree/master/DevDataProducts/shinyapp) folder.)

This presentation you are viewing is being rendered on GitHub Pages at
[DevDataProducts](http://coursera-2015.github.io/DevDataProducts)

