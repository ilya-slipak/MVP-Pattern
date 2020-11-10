//
//  Presenter.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

protocol CarPresenter: class {
    
    func getCount() -> Int
    func getCarModel(at index: Int) -> CarModel
    func getCarsFromApi()
}
