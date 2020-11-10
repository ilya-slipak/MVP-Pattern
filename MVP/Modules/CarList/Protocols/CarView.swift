//
//  View.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

protocol CarView: class {
    
    func showLoader()
    func hideLoader()
    func reloadData()
    func showAlert(with message: String)
}
