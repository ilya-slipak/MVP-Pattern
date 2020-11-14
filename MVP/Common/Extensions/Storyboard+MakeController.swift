//
//  Storyboard+MakeController.swift
//  MVP
//
//  Created by Ilya Slipak on 14.11.2020.
//

import UIKit

extension UIStoryboard {
    
    static func makeController(name: String, identifier: String) -> UIViewController {
        
        return UIStoryboard(name: name, bundle: nil).instantiateViewController(identifier: identifier)
    }
}
