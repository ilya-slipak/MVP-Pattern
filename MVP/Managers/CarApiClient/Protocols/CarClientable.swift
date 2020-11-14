//
//  CarClientable.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

protocol CarClientable: class {
    
    func getCars(completion: @escaping(Result<Entity<CarModel>, ApiError>) -> Void)
}
