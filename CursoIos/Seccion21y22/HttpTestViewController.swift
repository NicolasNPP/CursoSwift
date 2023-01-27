//
//  HttpTestViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//

import UIKit

class HttpTestViewController: UIViewController {

    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = ""
        email.text = ""
        loading.hidesWhenStopped = true
        loading.stopAnimating()
    }
    
    @IBAction func getAlamoFire(_ sender: Any) {
        
        self.name.text = ""
        self.email.text = ""
        loading.startAnimating()
        
        NetworkingProvider.shared.getUser(id: 511) { (user) in
                
            self.name.text = user.name
            self.email.text = user.email
            self.loading.stopAnimating()
            
        } failure: { error in
            self.name.text = "Error en la peticióna"
            self.loading.stopAnimating()
        }
    }
}
