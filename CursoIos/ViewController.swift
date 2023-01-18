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
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepper: UIStepper!
    
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
        
        //Slider
        mySlider.minimumTrackTintColor = .red
        mySlider.minimumValue = 1
        mySlider.maximumValue = Float(myPickerViewValues.count)
        mySlider.value = 3
      
        //Stepper
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double(myPickerViewValues.count)
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
    
    @IBAction func mySliderAction(_ sender: Any) {

        switch mySlider.value {
        case 1..<2:
            mySegmentedControls.selectedSegmentIndex = 0
        case 2..<3:
            mySegmentedControls.selectedSegmentIndex = 1
        case 3..<4:
            mySegmentedControls.selectedSegmentIndex = 2
        case 4..<5:
            mySegmentedControls.selectedSegmentIndex = 3
        default:
            mySegmentedControls.selectedSegmentIndex = 4
        }
    }
 
    @IBAction func myStepperAction(_ sender: Any) {
        let value = myStepper.value
        mySlider.value = Float(value)
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
