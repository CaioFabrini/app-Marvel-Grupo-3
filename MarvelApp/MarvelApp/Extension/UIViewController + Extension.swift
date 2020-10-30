//
//  UIViewController + Extension.swift
//  MarvelApp
//
//  Created by Guilherme Martins  on 26/10/20.
//

import Foundation
import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        }

        @objc func dismissKeyboard() {
            view.endEditing(true)
        }
}

extension String {
    
    enum ValidType {
        case email
        
    }
    
    enum Regex: String {
        case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    }
    
    func isValid( validityType: ValidType) -> Bool{
        let format = "SELF MATCHES %@"
        var regex = ""
        
        switch validityType {
        case .email:
            regex = Regex.email.rawValue
            
        }
        
        return NSPredicate(format: format, regex).evaluate(with: self)
        }
    }

