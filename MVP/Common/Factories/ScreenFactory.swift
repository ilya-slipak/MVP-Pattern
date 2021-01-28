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
        let builder = CarListBuilder()
        builder.build(controller: controller)
        return controller
    }
}
