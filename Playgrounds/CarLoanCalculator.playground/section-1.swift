// Playground - noun: a place where people can play

import UIKit

println("Interest Rate")
let interestRate = 5.0

println("Interest Per Period")
let interestPerPeriod = interestRate/100/12

println("Years")
var numberOfYears = 5.0

println("Months")
var numberOfPeriods = numberOfYears * 12.0

println("Full Cost Of Item")
let originalPrincipal = 12000.0

//payment per period = P* i* (1+i)^n/((1+i)^n-1)

//where i is the interest per period (20%/12)
//n is the number of periods
//P is the original principal

let numerator =  pow((1.0 + interestPerPeriod), numberOfPeriods)
let denominator = pow((1.0 + interestPerPeriod), numberOfPeriods)-1.0

let paymentPerPeriod = originalPrincipal * interestPerPeriod * (numerator/denominator)
