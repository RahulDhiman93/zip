//
//  ViewController.swift
//  zip
//
//  Created by Rahul Dhiman on 15/10/17.
//  Copyright © 2017 Rahul Dhiman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var zip: UITextField!
    @IBOutlet weak var cash: UITextField!
    @IBOutlet weak var togg: UITextField!
    
    let zipDel = zipDelegate()
    let cashDel = cashDelegate()
    let toggDel = ToggDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.zip.delegate = zipDel
        self.cash.delegate = cashDel
        self.togg.delegate = toggDel
        
    }
    
}

