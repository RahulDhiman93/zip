//
//  CashDelegate.swift
//  zip
//
//  Created by Rahul Dhiman on 15/10/17.
//  Copyright © 2017 Rahul Dhiman. All rights reserved.
//

import Foundation
import UIKit

class cashDelegate: NSObject,UITextFieldDelegate {
     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newString = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        
        let digitString = newString
            .replacingOccurrences(of:"$", with: "")
            .replacingOccurrences(of:".", with: "")
        
        if let pennies = Int(digitString) {
            let remainder = pennies % 100
            let centString = (remainder < 10) ? "0\(remainder)" : "\(remainder)"
            textField.text = "$\(pennies / 100).\(centString)"
        }
        else {
            textField.text = "$0.00"
        }
        return false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "$0.00"
        }
    }
    
   
}
