// Playground - noun: a place where people can play

import UIKit

let interestRate = 1.0
let interestPerPeriod = interestRate/100/12

var numberOfPeriods = 60.0

let originalPrincipal = 28498.0

//payment per period = P* i* (1+i)^n/((1+i)^n-1)

//where i is the interest per period (20%/12)
//n is the number of periods
//P is the original principal

let numerator =  pow((1.0 + interestPerPeriod), numberOfPeriods)
let denominator = pow((1.0 + interestPerPeriod), numberOfPeriods)-1.0

let paymentPerPeriod = originalPrincipal * interestPerPeriod * (numerator/denominator)