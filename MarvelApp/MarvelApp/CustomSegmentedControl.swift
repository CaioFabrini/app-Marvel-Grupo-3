//
//  CustomSegmentedControl.swift
//  MarvelApp
//
//  Created by Amanda Nolasco on 25/10/20.
//

import UIKit

@IBDesignable

class CustomSegmentedControl: UIView {

@IBInspectable
    var borderWidth: CGFloat = 0{
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
@IBInspectable
    var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    
}
    
    override func draw(_ rect: CGRect) {
        
    }
    

}

