//
//  ViewController.swift
//  MVP
//
//  Created by Ilya Slipak on 03.10.2020.
//

import UIKit

final class CarListViewController: UIViewController {
    
    // MARK: - Outlets
    
    // MARK: - Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Private Methods
}

// MARK: - CarView

extension CarListViewController: CarView {
    
    func showLoader() {
        
        //TODO: Show Loader
    }
    
    func hideLoader() {
        
        //TODO: Hide Loader
    }
    
    func reloadData() {
        
        //TODO: Reload data
    }
    
    func showAlert(with message: String) {
        
        //TODO: Show alert
    }
}
