//
//  ViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 12/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //Oulets
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    //Variables
    private let myPickerViewValues = ["Nicolás", "Alejandro", "Rosana", "Carlos", "Johan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Picker
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }
    
    @IBAction func buttonOne(_ sender: Any) {

    }
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myString = myPickerViewValues[row]
        buttonOne.setTitle(myString, for: .normal)
    }
}
