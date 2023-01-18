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
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmentedControls: UISegmentedControl!
    
    //Variables
    private let myPickerViewValues = ["Nicolás", "Alejandro", "Rosana", "Carlos", "Johan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Picker
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        //Page Control
        myPageControl.numberOfPages = myPickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .blue
        myPageControl.pageIndicatorTintColor = .lightGray
        
        //Segmented Controls
        mySegmentedControls.removeAllSegments()
        for (index, value) in myPickerViewValues.enumerated() {
            mySegmentedControls.insertSegment(withTitle: value, at: index, animated: true)
        }
        
    }
    
    @IBAction func buttonOne(_ sender: Any) {
    }
    
    @IBAction func myPickerViewAction(_ sender: Any) {
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
        let myString = myPickerViewValues[myPageControl.currentPage]
        buttonOne.setTitle(myString, for: .normal)
        mySegmentedControls.selectedSegmentIndex = myPageControl.currentPage
    }
    
    @IBAction func mySegmentedControl(_ sender: Any) {
        myPickerView.selectRow(mySegmentedControls.selectedSegmentIndex, inComponent: 0, animated: true)
        
        myPageControl.currentPage = mySegmentedControls.selectedSegmentIndex
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
        
        myPageControl.currentPage = row
    }
}
