//
//  ViewController.swift
//  Maitre D
//
//  Created by student on 9/10/19.
//  Copyright © 2019 Bearcat Coders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalTF:UITextField!
    @IBOutlet weak var tipTF: UILabel!
    @IBOutlet weak var taxTF: UILabel!
    @IBOutlet weak var amountTF: UILabel!
    
    @IBOutlet weak var percentTF: UITextField!
    
    @IBAction func calculate(_ sender:UIButton){
        
        if totalTF.text != ""
        {
            if let totalInDollars = Double(totalTF.text!)
            {
                let tax = totalInDollars*5.6/100
                let tip = totalInDollars*15/100
                let amount = totalInDollars+tax+tip
                tipTF.text = "\(tip)"
                taxTF.text = "\(tax)"
                amountTF.text="\(amount)"
            }
            else{
                let ac = UIAlertController(title: "Invalid amount", message: "only numerics", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style:.default, handler: nil)
                ac.addAction(action)
                self.present(ac,animated: true)
            }
        }
        else{
            let ac = UIAlertController(title: "No amount Specified", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            ac.addAction(action)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

