//
//  CarListBuilder.swift
//  MVP
//
//  Created by Ilya Slipak on 28.01.2021.
//

import Foundation

struct CarListBuilder {
    
}

// MARK: - CarBuilderProtocol

extension CarListBuilder: CarBuilderProtocol {
    
    func build(controller: CarListViewController) {
        
        let presenter = CarListPresenter()
        let apiClient = MockCarApiClient()
        
        controller.presenter = presenter
        presenter.view = controller
        presenter.carAPIClient = apiClient
    }
}
