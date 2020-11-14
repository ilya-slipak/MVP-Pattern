//
//  Entity.swift
//  MVP
//
//  Created by Ilya Slipak on 14.11.2020.
//

import Foundation

struct Entity<T: Decodable>: Decodable {
    
    let entities: [T]
}
