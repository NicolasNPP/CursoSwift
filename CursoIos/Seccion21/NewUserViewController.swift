//
//  NewUserViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 26/01/2023.
//

import UIKit

class NewUserViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = ""
        id.text = ""
        emailLabel.text = ""
        activityInd.hidesWhenStopped = true
        activityInd.stopAnimating()
    }
    
    @IBAction func addUserAction(_ sender: Any) {
        
        self.activityInd.startAnimating()
        
        let newUser = NewUser(name: "Nico Pepe", email: "nicoss@pepe.com", gender: "Male", status: "Active")
        
        NetworkingProvider.shared.addUser(user: newUser) { (user) in
                
            self.name.text = user.name
            self.emailLabel.text = user.email
            self.id.text = user.id.description
            self.activityInd.stopAnimating()
            
        } failure: { error in
            self.name.text = "Error en la petición"
            self.activityInd.stopAnimating()
        }
            
    }
}
