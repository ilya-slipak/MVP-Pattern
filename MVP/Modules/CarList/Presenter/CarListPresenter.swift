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
    
    weak var view: (CarViewProtocol & AlertShowable)!
    var carAPIClient: CarClientable!
    
    // MARK: - Private Properties
    
   private func getCars() {
        
        carAPIClient.getCars { [weak self] result in
            
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

// MARK: - CarListPresenterProtocol

extension CarListPresenter: CarListPresenterProtocol {
    
    // MARK: - Properties
    
    var count: Int {
        return dataSource.count
    }
    
    // MARK: - Methods
    
    func viewDidLoad() {
        
        view.setupView()
        getCars()
    }
    
    func getCarModel(at index: Int) -> UICarModel {
        
        return dataSource[index]
    }
}
