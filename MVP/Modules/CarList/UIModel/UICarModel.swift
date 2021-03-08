//
//  UICarContent.swift
//  MVP
//
//  Created by Ilya Slipak on 14.11.2020.
//

import UIKit

struct UICarModel {
    
    let title: String
    let year: String
    let price: NSAttributedString
    let image: UIImage?
    
    init(carModel: CarModel) {
        
        title = "\(carModel.company)  \(carModel.model)"
        year = "Year: \(carModel.year)"
        
        let pricePlaceholder = "Price: "
        let priceValue = String(carModel.price) + "$"
        let font = UIFont.systemFont(ofSize: 15)
        let placeholderColor = UIColor.white
        let priceValueColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
        let finalAttribtedString = StringFormatter
            .getAttributedString(string: pricePlaceholder,
                                 color: placeholderColor,
                                 font: font)
        let priceValueAttributedString = StringFormatter
            .getAttributedString(string: priceValue,
                                 color: priceValueColor,
                                 font: font)
        
        finalAttribtedString.append(priceValueAttributedString)
        
        price = finalAttribtedString
        image = UIImage(named: carModel.imageURL)
    }
}
