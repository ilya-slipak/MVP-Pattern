//
//  MainBuilder.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

final class CarListBuilder {
    
}

 // MARK: - CarBuilder

extension CarListBuilder: CarBuilder {
    
    func build(presenter: CarPresenter,
               client: CarClientable) -> CarListViewController {
        
        return CarListViewController()
    }
}


