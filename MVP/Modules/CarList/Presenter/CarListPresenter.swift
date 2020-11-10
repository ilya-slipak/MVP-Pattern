//
//  MainPresenter.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

final class CarListPresenter {
    
    // MARK: - Private Properties
    
    private weak var view: CarView!
    private let client: CarClientable = MockCarClient()
    private var dataSource: [CarModel] = []
    private var count: Int {
        return dataSource.count
    }
    
}

// MARK: - CarPresenter

extension CarListPresenter: CarPresenter {
    
    func getCount() -> Int {
        
        return count
    }
    
    func getCarModel(at index: Int) -> CarModel {
        
        return dataSource[index]
    }
    
    func getCarsFromApi() {
        
        view.showLoader()
        client.getCars { [weak self] result in
            
            self?.view.hideLoader()
            switch result {
            case .success(let response):
                self?.dataSource = response.entities
                self?.view.reloadData()
            case .failure(let error):
                self?.view.showAlert(with: error.message)
            }
        }
    }
}
