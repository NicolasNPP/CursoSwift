//
//  AutomovilViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 24/01/2023.
//

import UIKit

class AutomovilViewController: UIViewController {
    
    var autoType: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalPresentationStyle = .fullScreen
        let automovil = Automovil()
        
        print("Encender automovil: \(automovil.encender())")
    }
    
    @IBAction func createCar(_ sender: Any) {
        autoType = 0
        performSegue(withIdentifier: "autoSegue", sender: self)
    }
    
    
    @IBAction func createDepCar(_ sender: Any) {
        autoType = 1
        performSegue(withIdentifier: "autoSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? AutoDetalleViewController {
            destino.autoType = self.autoType
        }
    }
}
