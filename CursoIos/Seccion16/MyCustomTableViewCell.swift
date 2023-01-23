//
//  MyCustomTableViewCell.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 23/01/2023.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myLabel1.font = UIFont.boldSystemFont(ofSize: 20)
        myLabel1.textColor = .purple
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print(myLabel1.text ?? "")
    }
    
}
