//
//  CarModel.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import UIKit

struct CarModel {
    
    let price: Int
    let model: String
    let year: String
    let imageURL: String
    let company: String
}

// MARK: - Decodable

extension CarModel: Decodable {
    
    enum CodingKeys: String, CodingKey {
        
        case model
        case price
        case year
        case imageURL = "img"
        case company = "manufacturer"
    }
}
