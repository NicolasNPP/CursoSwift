//
//  ViewController.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 12/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //Oulets
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmentedControls: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var mySwitchLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myTextView: UITextView!
    
    //Variables
    private let myPickerViewValues = ["Nicolás", "Alejandro", "Rosana", "Carlos", "Johan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.isHidden = true
        
        myActivityIndicator.color = .purple
        myActivityIndicator.startAnimating()

        //Picker
        myPickerView.backgroundColor = .purple
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
        mySlider.value = 1
      
        //Stepper
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double(myPickerViewValues.count)
        
        //Switch
        mySwitch.onTintColor = .purple
        mySwitch.isOn = false
        
        //Progress Indicators
        myProgressView.progress = 0
        
        //Label
        mySwitchLabel.text = "Apagado"
        
        //TextField
        myTextField.textColor = .purple
        myTextField.placeholder = "Escribe algo"
        myTextField.delegate = self
        
        //TextView
        myTextView.textColor = .purple
        myTextView.delegate = self
    }
    
    @IBAction func myPickerViewAction(_ sender: Any) {
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
        let myString = myPickerViewValues[myPageControl.currentPage]
        mySegmentedControls.selectedSegmentIndex = myPageControl.currentPage
    }
    
    @IBAction func mySegmentedControl(_ sender: Any) {
        myPickerView.selectRow(mySegmentedControls.selectedSegmentIndex, inComponent: 0, animated: true)
        
        myPageControl.currentPage = mySegmentedControls.selectedSegmentIndex
    }
    
    @IBAction func mySliderAction(_ sender: Any) {

        var progress: Float = 0
        
        switch mySlider.value {
        case 1..<2:
            mySegmentedControls.selectedSegmentIndex = 0
            progress = 0.2
        case 2..<3:
            mySegmentedControls.selectedSegmentIndex = 1
            progress = 0.4
        case 3..<4:
            mySegmentedControls.selectedSegmentIndex = 2
            progress = 0.6
        case 4..<5:
            mySegmentedControls.selectedSegmentIndex = 3
            progress = 0.8
        default:
            mySegmentedControls.selectedSegmentIndex = 4
            progress = 1
        }
        
        myProgressView.progress = progress
    }
 
    @IBAction func myStepperAction(_ sender: Any) {
        let value = myStepper.value
        mySlider.value = Float(value)
    }
    
    @IBAction func myButtonAction(_ sender: Any) {
        myTextView.resignFirstResponder()
    }
    
    @IBAction func mySwitchAction(_ sender: Any) {
        if mySwitch.isOn {
            myPickerView.isHidden = false
            myActivityIndicator.stopAnimating()
            myActivityIndicator.isHidden = true
            mySwitchLabel.text = "Encendido"
        } else {
            myPickerView.isHidden = true
            myActivityIndicator.startAnimating()
            myActivityIndicator.isHidden = false
            mySwitchLabel.text = "Apagado"
        }
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
        myPageControl.currentPage = row
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        myButton.setTitle(myTextField.text, for: .normal)
    }
}

extension ViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        myTextField.isHidden = true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        myTextField.isHidden = false
    }
    
}
