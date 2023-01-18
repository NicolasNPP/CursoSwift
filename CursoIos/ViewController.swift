//
//  ViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 12/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //Oulets
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonOne.backgroundColor = .magenta
    }

    
    @IBAction func buttonOne(_ sender: Any) {
        labelOne.text = "Ya cambié"
        buttonOne.backgroundColor = .black
    }
    
}
