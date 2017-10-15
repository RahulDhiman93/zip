//
//  ZipCodeDelegate.swift
//  zip
//
//  Created by Rahul Dhiman on 15/10/17.
//  Copyright © 2017 Rahul Dhiman. All rights reserved.
//

import Foundation
import UIKit

class zipDelegate: NSObject,UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newString = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        return newString.characters.count <= 5 
    }
    
}
