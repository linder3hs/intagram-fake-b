//
//  Post+String.swift
//  ProjectMVVM
//
//  Created by Linder Anderson Hassinger Solano    on 30/04/22.
//

import Foundation

class HelperString {
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
}
