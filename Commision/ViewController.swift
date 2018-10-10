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
        getInput()
    }
    
    func getInput() -> Double
    {
        if let commissionPay = commissionPayTextField.text, let pay = Double(commissionPay) {
            print("Has data and can be turned into a decimal")
        } else {
            print("No data or can't be turned into a decimal")
        }
        return 3.14
    }
    
    
}

