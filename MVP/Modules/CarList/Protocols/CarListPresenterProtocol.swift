//
//  Presenter.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

protocol CarListPresenterProtocol: class {
    
    // MARK: - Properties
    
    var count: Int { get }
    
    // MARK: - Methods
    
    func viewDidLoad()
    func getCarModel(at index: Int) -> UICarModel
}
