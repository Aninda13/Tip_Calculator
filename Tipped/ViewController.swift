//
//  ViewController.swift
//  Tipped
//
//  Created by Aninda Halder on 7/31/20.
//  Copyright © 2020 Aninda Halder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var TipAmountSegment: UISegmentedControl!
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("view Will Appear")
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("view did appear")
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("view will dissapear")
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        print("view did dissapear")
//    }
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill
       // let convertedBill = Double(billField.text!)
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15,0.18,0.2]
        // calculate
        let tip = bill * tipPercentages[TipAmountSegment.selectedSegmentIndex]
       
        let totalBill = bill + tip
        
        // update
       tipLabel.text = String(format: "$%.2f", tip)
       totalLabel.text = String(format: "$%.2f", totalBill)
        
    }
}

