//
//  PokeViewModel.swift
//  ProjectMVVM
//
//  Created by Linder Anderson Hassinger Solano    on 22/04/22.
//

import Foundation

class PokeViewModel {
    
    var data = [Pokemon]()
    
    func getDataFromAPI() {
        data = []
    }
    
    func refresh() {
        data.removeAll()
        getDataFromAPI()
    }
    
}
