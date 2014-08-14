//
//  ViewController.swift
//  CarLoanCalculator
//
//  Created by Francis Chary on 2014-08-08.
//  Copyright (c) 2014 Churowa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberOfMonths:UILabel!
    @IBOutlet var monthsSlider:UISlider!
    @IBOutlet var paymentText:UILabel!
    @IBOutlet var principalAmount:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        principalAmount.text = "26000.0"
        numberOfMonths.text = "\(self.monthsSlider.value) months"
        paymentText.text = "\(self.paymentPerPeriod()) dollares"
        monthsSlider.addTarget(self, action: "valueChanged:", forControlEvents: UIControlEvents.ValueChanged)
    }

    func valueChanged(sender:UISlider) {
        let months = Int(self.monthsSlider.value)
        numberOfMonths.text = "\(months) months"
        paymentText.text = "\(self.paymentPerPeriod()) dollares"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func paymentPerPeriod() -> Float {
        let interestRate:Float = 1.0
        
        let interestPerPeriod:Float = interestRate/100/12
        let numPeriods:Float = monthsSlider.value
        
        let originalPrincipal:Float = (principalAmount.text as NSString).floatValue
        
        let numerator:Float =  pow((1.0 + interestPerPeriod), numPeriods)
        let denominator:Float = pow((1.0 + interestPerPeriod), numPeriods)-1.0

        return originalPrincipal * interestPerPeriod * (numerator/denominator)
    }


}

