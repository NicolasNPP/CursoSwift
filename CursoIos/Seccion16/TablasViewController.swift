//
//  TabasViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 23/01/2023.
//

import UIKit

class TablasViewController: UIViewController {
    
    @IBOutlet weak var tView: UITableView!
    
    private let myCountrys = ["España","Mexico", "Peru", "Colombia", "Argentina"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tView.dataSource = self
    }
}

extension TablasViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountrys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        if cell == nil {
          cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        cell!.textLabel?.text = myCountrys[indexPath.row]
        
        return cell!
    }
}
