//
//  HttpTestViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//

import UIKit

class HttpTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func getAlamoFire(_ sender: Any) {
        NetworkingProvider.shared.getUser(id: 492)
    }
}
