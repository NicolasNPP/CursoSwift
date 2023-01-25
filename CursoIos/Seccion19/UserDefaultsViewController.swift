//
//  UserDefaultsViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//

import UIKit

class UserDefaultsViewController: UIViewController {
    
    private let kMyKey = "MY_KEY"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func get(_ sender: Any) {
        if let value = UserDefaults.standard.string(forKey: kMyKey) {
            showAlert(message: value)
        } else {
            showAlert(message: "No hay un valor para esta clave")
        }
    }
    
    @IBAction func put(_ sender: Any) {
        UserDefaults.standard.set("Nico Pepe", forKey: kMyKey)
        UserDefaults.standard.synchronize()
        showAlert(message: "Mensaje guardado")
    }
    
    @IBAction func del(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: kMyKey)
        UserDefaults.standard.synchronize()
        showAlert(message: "Mensaje eliminado")
    }
    
    private func showAlert(message: String){
        let alert = UIAlertController(title: "My UserDefaults", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
