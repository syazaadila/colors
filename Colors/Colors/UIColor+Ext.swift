//
//  UIColor+Ext.swift
//  Colors
//
//  Created by ansible on 22/01/2024.
//

import Foundation
import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1)
        
        return randomColor
    }
}
