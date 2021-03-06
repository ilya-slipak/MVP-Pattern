//
//  CarContentClient.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

final class MockCarApiClient {
    
    // MARK: - Private Properties
    
    private var bundle = Bundle.main
    private var decoder = JSONDecoder()
}

// MARK: - CarClientable

extension MockCarApiClient: CarClientable {
        
    func getCars(completion: @escaping(Result<Entity<CarModel>, ApiError>) -> Void) {
        
        guard let path = bundle.url(forResource: "cars", withExtension: ".json") else {
            completion(.failure(ApiError(message: "Invalid json path")))
            return
        }
        
        do {
            
            let data = try Data(contentsOf: path)
            let enities = try decoder.decode(Entity<CarModel>.self, from: data)
            
            return completion(.success(enities))
        } catch {
            
            completion(.failure(ApiError(message: "Corrupted json file")))
        }
    }
}
