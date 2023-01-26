//
//  TestKingFisherViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 26/01/2023.
//

import UIKit
import Kingfisher

class TestKingFisherViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myActivity.hidesWhenStopped = true
        myActivity.stopAnimating()
        downloadImage()
    }
    
    func downloadImage(){
        myActivity.startAnimating()
        myImage.kf.setImage(with: URL(string: "https://assets.stickpng.com/images/58482ce4cef1014c0b5e4a4c.png"))
        myActivity.stopAnimating()
    }
}
