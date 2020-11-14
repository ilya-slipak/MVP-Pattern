//
//  MainPresenter.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

final class CarListPresenter {
    
    // MARK: - Private Properties
    
    private var dataSource: [UICarModel] = []
    
    // MARK: - Public Properties
    
    weak var view: CarViewable!
    var apiClient: CarClientable!
    var count: Int {
        return dataSource.count
    }
    
    // MARK: - Private Properties
    
   private func getCars() {
        
        apiClient.getCars { [weak self] result in
            
            switch result {
            case .success(let response):
                self?.dataSource = response.entities.map { UICarModel(carModel: $0) }
                self?.view.reloadData()
            case .failure(let error):
                print("Error:", error)
            }
        }
    }
}

// MARK: - CarPresenter

extension CarListPresenter: CarPresentable {
    
    func viewDidLoad() {
        
        view.setupView()
        getCars()
    }
    
    func getCarModel(at index: Int) -> UICarModel {
        
        return dataSource[index]
    }
}
