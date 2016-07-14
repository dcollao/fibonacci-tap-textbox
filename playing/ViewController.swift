//
//  ViewController.swift
//  playing
//
//  Created by Diego  Collao on 14-07-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var n: Int = 0
    var c: Int = 0    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textbox: UITextField!
    @IBOutlet weak var button: UIButton!
    
    
    func fibonacci(number: Int) -> (Int) {
        if number <= 1 {
            return number
        } else {
            return fibonacci(number: number - 1) + fibonacci(number: number - 2)
        }
    }
    
    @IBAction func OnButtonPressed(_ sender: UIButton) {
        if ((textbox.text?.isEmpty) != false) {
            label.text = "nope"
        } else {
            n = Int(textbox.text!)!
            c = fibonacci(number: n)
            label.text = "\(n) --> \(c)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textbox.keyboardType = .numberPad
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

