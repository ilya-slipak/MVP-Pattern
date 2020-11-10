//
//  ApiError.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

struct ApiError: Error {
    
    let message: String
    
    init(message: String) {
        self.message = message
    }
}
