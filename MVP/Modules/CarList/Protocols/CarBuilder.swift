//
//  CarBuilder.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

protocol CarBuilder: class {
    
    func build(presenter: CarPresenter,
               client: CarClientable) -> CarListViewController
}
