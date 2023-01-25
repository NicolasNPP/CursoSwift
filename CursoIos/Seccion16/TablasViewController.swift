//
//  TabasViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 23/01/2023.
//

import UIKit
import CoreData

class TablasViewController: UIViewController {
    
    @IBOutlet weak var tView: UITableView!
    
    //Referenciar el managed object context

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var myCountrys:[Pais]?
    
//    private let myCountrys = ["España","Mexico", "Peru", "Colombia", "Argentina"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tView.dataSource = self
        tView.delegate = self
        
        tView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
        recuperarDatos()
    }
    
    func recuperarDatos() {
        do{
            self.myCountrys = try context.fetch(Pais.fetchRequest())
            
            DispatchQueue.main.async {
                self.tView.reloadData()
            }
            
            
        } catch {
            print("Error recuperando datos")
        }
    }
    
    @IBAction func AddCountr(_ sender: Any) {
        //Crea alerta
        let alert = UIAlertController(title: "Agregar País", message: "Añade un país nuevo", preferredStyle: .alert)
        
        alert.addTextField()
        
        let buttonAlert = UIAlertAction(title: "Añadir", style: .default) { (action) in
            
            let textField = alert.textFields![0]
            
            let newCountry = Pais(context: self.context)
            
            newCountry.nombre = textField.text
            
            try! self.context.save()
            
            self.recuperarDatos()
        }
        
        alert.addAction(buttonAlert)
        self.present(alert, animated: true, completion: nil)
    }
}

extension TablasViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Celdas simples"
        } else {
            return "Celdas custom"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountrys!.count
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
            cell!.textLabel?.text = myCountrys![indexPath.row].nombre
        return cell!
        }
        else {
            var cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
            
            cell?.myLabel1.text = String(indexPath.row  + 1)
            
            cell!.myLabel2.text = myCountrys![indexPath.row].nombre
            
            return cell!
        }
    }
}

extension TablasViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myCountrys![indexPath.row])
    }
}
