//
//  ViewController.swift
//  PrimeNumber
//
//  Created by 김종현 on 2018. 3. 25..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    var isPrime = true
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func checkBtnPressed(_ sender: Any) {
        number  = Int(myTextField.text!)!
        print(number)
        
        if number == 1 {
            isPrime = true
        }
        
        if number != 1 && number != 2 {
            for i in 2 ..< number {
                if number % i == 0 {
                    isPrime = false
                }
            }
            //resultLabel.text = String(isPrime)
        }
        resultLabel.text = String(isPrime)
    }
    
    @IBAction func initBtnPressed(_ sender: Any) {
        myTextField.text = ""
        resultLabel.text = ""
    }
    
}

