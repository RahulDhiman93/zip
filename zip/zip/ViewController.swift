//
//  ViewController.swift
//  zip
//
//  Created by Rahul Dhiman on 15/10/17.
//  Copyright © 2017 Rahul Dhiman. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

   
    
    @IBOutlet weak var zip: UITextField!
    @IBOutlet weak var cash: UITextField!
    @IBOutlet weak var togg: UITextField!
    @IBOutlet weak var butt: UISwitch!
    
    
    let zipDel = zipDelegate()
    let cashDel = cashDelegate()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.zip.delegate = zipDel
        self.cash.delegate = cashDel
        self.togg.delegate = self
        self.butt.setOn(false, animated: false)
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.butt.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    
    @IBAction func toggleS(_ sender: AnyObject) {
        
        if !(sender as! UISwitch).isOn {
            self.togg.resignFirstResponder()
        }
    }
    
}

