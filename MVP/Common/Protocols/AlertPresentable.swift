//
//  AlertPresentable.swift
//  MVP
//
//  Created by Ilya Slipak on 06.02.2021.
//

import UIKit

protocol AlertPresentable: class {
    
    func showAlert(_ buttonOK: String, _ buttonCancel: String?, _ title: String?, _ message: String?, completion: (() -> Void)?)
}

extension AlertPresentable where Self: UIViewController {
    
    func showAlert(_ buttonOK: String, _ buttonCancel: String?, _ title: String?, _ message: String?, completion: (() -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: buttonOK, style: .default, handler: { (_) in
            completion?()
        }))
        if let buttonCancel = buttonCancel {
            alert.addAction(UIAlertAction(title: buttonCancel, style: .default, handler: { (_) in
            }))
        }
        present(alert, animated: true, completion: nil)
    }
}
