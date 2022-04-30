//
//  Post+Image.swift
//  ProjectMVVM
//
//  Created by Linder Anderson Hassinger Solano    on 30/04/22.
//

import Foundation
import UIKit

class HelperImage {
    
    static func setImageFromUrl(url: String) -> UIImage? {
        return convertImageFromURL(url: url)
    }
    
    static func convertImageFromURL(url: String) -> UIImage? {
        let data = try? Data(contentsOf: HelperString.getURLFromString(url: url)!)
        
        if let imageData = data {
            return UIImage(data: imageData)
        }
        
        return nil
    }
    
}
