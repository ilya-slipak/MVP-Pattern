//
//  StringFormatter.swift
//  MVP
//
//  Created by Ilya Slipak on 14.11.2020.
//

import UIKit

class StringFormatter {
    
    static func getAttributedString(string: String,
                                  color: UIColor,
                                  font: UIFont) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: color
        ]
        
        let attributetString = NSMutableAttributedString(string: string,
                                                         attributes: attributes)
        
        return attributetString
    }
}
