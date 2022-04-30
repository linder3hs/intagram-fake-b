//
//  ViewController.swift
//  ProjectMVVM
//
//  Created by Linder Anderson Hassinger Solano    on 22/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    let pokeViewModel: PokeViewModel = PokeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pokeViewModel.getDataFromAPI()
        print("data")
        print(pokeViewModel.data)
    }


}

