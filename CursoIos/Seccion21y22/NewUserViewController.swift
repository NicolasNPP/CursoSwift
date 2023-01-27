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
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var labelPutpost: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = ""
        id.text = ""
        emailLabel.text = ""
        
        deleteButton.isHidden = true
        
        activityInd.hidesWhenStopped = true
        activityInd.stopAnimating()
    }
    
    @IBAction func addUserAction(_ sender: Any) {
        
        self.activityInd.startAnimating()
        var number = Int.random(in: 100..<200)
        let newUser = NewUser(name: "Nicolas Pepe\(number)", email: "dsdas\(number)assadds@pepe.com", gender: "Male", status: "Active")
        
        NetworkingProvider.shared.addUser(user: newUser) { (user) in
                
            self.name.text = user.name
            self.emailLabel.text = user.email
            self.id.text = user.id?.description
            self.deleteButton.isHidden = false
            self.labelPutpost.isHidden = true
            self.activityInd.stopAnimating()
            
        } failure: { error in
            self.name.text = "Error en la petición"
            self.emailLabel.text = ""
            self.id.text = ""
            self.activityInd.stopAnimating()
        }
    }
    
    @IBAction func putUserAction(_ sender: Any) {
        
        self.activityInd.startAnimating()
        var number = Int.random(in: 100..<200)
        let newUser = NewUser(name: "Nicolas Pepe\(number)", email: nil, gender: "Male", status: "Active")
        
        NetworkingProvider.shared.updateUser(id: 191599, user: newUser) { (user) in
                
            self.name.text = user.name
            self.emailLabel.text = user.email
            self.id.text = user.id?.description
            self.activityInd.stopAnimating()
            
        } failure: { error in
            self.name.text = "Error en la petición"
            self.emailLabel.text = ""
            self.id.text = ""
            self.activityInd.stopAnimating()
        }
    }
 
    
    @IBAction func deleteUserAction(_ sender: Any) {
        self.activityInd.startAnimating()
        let userID: Int? = Int(self.id.text!)
        
        
        NetworkingProvider.shared.deleteUser(id: userID!) {
            self.activityInd.stopAnimating()
            self.name.text = "Usuario con ID \(userID) borrado correctamente"
            self.emailLabel.text = ""
            self.id.text = ""
        } failure: {
            (error) in
            self.activityInd.stopAnimating()
            self.name.text = "Error en el borrado"
        }
    }
}
