//
//  CarContentClient.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

final class MockCarClient {
    
    // MARK: - Private Properties
    
    private var bundle = Bundle.main
    private var decoder = JSONDecoder()
}

extension MockCarClient: CarClientable {
    
    func getCars(completion: @escaping(Result<Entities<CarModel>, ApiError>) -> Void) {
        
        guard let path = bundle.path(forResource: "cars", ofType: ".json") else {
            completion(.failure(ApiError(message: "Invalid json path")))
            return
        }
        
        var enities: Entities<CarModel>
        
        do {
            let data = try Data(contentsOf: path.toUrl())
            enities = try decoder.decode(Entities<CarModel>.self, from: data)
            
        } catch {
            completion(.failure(ApiError(message: "Corrupted json file")))
            return
        }
        
        return completion(.success(enities))
    }
}
