//
//  CarFactory.swift
//  MVP
//
//  Created by Ilya Slipak on 14.11.2020.
//

import UIKit

enum ScreenFactory {
    
    static func makeCarListScreen() -> CarListViewController {
        
        let controller = CarListViewController.instantiateFromStoryboard()
        let presenter = CarListPresenter()
        let apiClient = MockCarApiClient()
        
        controller.presenter = presenter
        presenter.view = controller
        presenter.apiClient = apiClient
        
        return controller
    }
}
