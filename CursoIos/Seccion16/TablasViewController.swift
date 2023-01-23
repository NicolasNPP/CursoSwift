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
        tView.delegate = self
        
        tView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
    }
}

extension TablasViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountrys.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
        if cell == nil {
          cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
            cell?.accessoryType = .disclosureIndicator
        }
        cell!.textLabel?.text = myCountrys[indexPath.row]
        return cell!
        }
        else {
            var cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
            
            cell?.myLabel1.text = String(indexPath.row  + 1)
            
            cell!.myLabel2.text = myCountrys[indexPath.row]
            
            return cell!
        }
    }
}

extension TablasViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myCountrys[indexPath.row])
    }
}
