//
//  CarFactory.swift
//  MVP
//
//  Created by Ilya Slipak on 14.11.2020.
//

import UIKit

enum CarScreensFactory {
    
    static func makeCarListScreen() -> CarListViewController {
        
        let controller = UIStoryboard.makeController(name: "Main",
                                                     identifier: "CarListViewController") as! CarListViewController
        
        let presenter = CarListPresenter()
        let apiClient = MockCarApiClient()
        
        controller.presenter = presenter
        presenter.view = controller
        presenter.apiClient = apiClient
        
        return controller
    }
}
