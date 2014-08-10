//
//  ViewController.swift
//  CarLoanCalculator
//
//  Created by Francis Chary on 2014-08-08.
//  Copyright (c) 2014 Churowa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let interestRate: Float = 1.0
//    
//    let interestPerPeriod = interestRate/100/12
//    
//    let numberOfPeriods = 60.0
//    
//    let originalPrincipal = 28498.0
//    
//    let numerator =  pow((1.0 + interestPerPeriod), numberOfPeriods)
//    let denominator = pow((1.0 + interestPerPeriod), numberOfPeriods)-1.0
//    
//    let paymentPerPeriod = originalPrincipal * interestPerPeriod * (numerator/denominator)
    
    @IBOutlet var numberOfMonths:UILabel!
    @IBOutlet var monthsSlider:UISlider!
    @IBOutlet var paymentText:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfMonths.text = "\(self.monthsSlider.value)"
        paymentText.text = "\(self.paymentPerPeriod(monthsSlider.value)) dollares"
        monthsSlider.addTarget(self, action: "valueChanged:", forControlEvents: UIControlEvents.ValueChanged)
    }

    func valueChanged(sender:UISlider) {
        numberOfMonths.text = "\(self.monthsSlider.value)"
        paymentText.text = "\(self.paymentPerPeriod(monthsSlider.value)) dollares"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func paymentPerPeriod(numberOfPeriods:Float) -> Float {
        let interestRate:Float = 1.0
        
        let interestPerPeriod:Float = interestRate/100/12
        let numPeriods:Float = numberOfPeriods
        
        let originalPrincipal:Float = 28498.0
        
        let numerator:Float =  pow((1.0 + interestPerPeriod), numPeriods)
        let denominator:Float = pow((1.0 + interestPerPeriod), numPeriods)-1.0

        return originalPrincipal * interestPerPeriod * (numerator/denominator)
    }


}

