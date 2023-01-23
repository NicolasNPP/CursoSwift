//
//  MyCustomCollectionViewCell.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 23/01/2023.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myLabel.textColor = .purple
    }

}
