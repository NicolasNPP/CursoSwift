//
//  ModificarConstrainsViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 24/01/2023.
//

import UIKit

class ModificarConstrainsViewController: UIViewController {
    
    @IBOutlet weak var topConstrain: NSLayoutConstraint!
    @IBOutlet weak var leftConstrain: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topConstrain.constant = 200
        leftConstrain.constant = 120
    }
}
