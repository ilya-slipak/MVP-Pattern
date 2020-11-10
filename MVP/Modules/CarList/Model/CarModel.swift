//
//  CarModel.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

struct Entities<T: Decodable>: Decodable {
    
    let entities: [T]
}

struct CarModel: Decodable {
    
    let carCompany: String
    let model: String
    let price: Int
    let imageURL: String
    
    enum CodingKeys: String, CodingKey {
        
        case carCompany = "manufacturer"
        case model
        case price
        case imageURL = "img"
    }
}
