//
//  ViewController.swift
//  Commision
//
//  Created by Caroline Lubbe on 10/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var commissionPayTextField: UITextField!
    
    @IBOutlet weak var totalPayLabel: UILabel!
    
    let basePay: Int = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func calculateOnTapped(_ sender: UIButton) {
        let commissionPay = getInput()
        let totalPay = Double(basePay) + commissionPay
        let formattedTotalPay = String(format: "%.2f", totalPay)
        totalPayLabel.text = "Total Pay = $\(formattedTotalPay)"
    }
    
    func getInput() -> Double
    {
        if let commissionPay = commissionPayTextField.text, let pay = Double(commissionPay) {
            return pay
        } else {
            return 0
        }
    }
    
    
}

