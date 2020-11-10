//
//  String+ToUrl.swift
//  MVP
//
//  Created by Ilya Slipak on 10.11.2020.
//

import Foundation

extension String {
    
    func toUrl() -> URL {
        
        return URL(fileURLWithPath: self)
    }
}
