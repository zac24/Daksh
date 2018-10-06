//
//  Extentions.swift
//  Daksh
//
//  Created by Prashant Dwivedi on 06/10/18.
//  Copyright © 2018 Prashant Dwivedi. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    static func dakshThemeColor() -> UIColor {
        return UIColor(red: 143/255, green: 11/255, blue: 65/255, alpha: 1.0)
    }
}

extension UIView {
    func anchor (top:NSLayoutYAxisAnchor?, paddingTop:CGFloat, left:NSLayoutXAxisAnchor?, paddingLeft:CGFloat, bottom:NSLayoutYAxisAnchor?, paddingBottom:CGFloat, right:NSLayoutXAxisAnchor?, paddingRight:CGFloat, width:CGFloat, height:CGFloat){
        
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}


