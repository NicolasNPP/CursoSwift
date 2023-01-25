//
//  ConstrainsPorCodigoViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//

import UIKit

class ConstrainsPorCodigoViewController: UIViewController {

    
    @IBOutlet weak var orangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Creación de constrains programáticamente
        
        //Altura
        orangeView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        orangeView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        //Constrains de posición
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraint(NSLayoutConstraint(item: orangeView!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
        
        orangeView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
    }
}
