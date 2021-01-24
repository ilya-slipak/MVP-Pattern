//
//  Storyboard+MakeController.swift
//  MVP
//
//  Created by Ilya Slipak on 14.11.2020.
//

import UIKit

extension UIViewController {
    
    static func instantiateFromStoryboard(_ name: String = "Main") -> Self
    {
        return instantiateFromStoryboardHelper(name)
    }
    
    fileprivate class func instantiateFromStoryboardHelper<T>(_ name: String) -> T {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! T
        
        return controller
    }
}
