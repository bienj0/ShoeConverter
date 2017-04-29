//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Robin Slot on 29-04-17.
//  Copyright © 2017 brick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextfield: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(_ sender: UIButton) {
//        let sizeFromTextField = mensShoeSizeTextfield.text
//        let numberFromTextField = Int(sizeFromTextField!)
//        var integerFromTextField = numberFromTextField!
        
        let sizeFromTextField = Int(mensShoeSizeTextfield.text!)
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.isHidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField! + conversionConstant)" + " in European Shoe Size"
        mensShoeSizeTextfield.resignFirstResponder()
        mensShoeSizeTextfield.clearsOnBeginEditing = true

    }
    @IBAction func convertWomensShoeSizeButtonPressed(_ sender: UIButton) {
        let sizeFromTextField = Double(womensShoeSizeTextField.text!)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.isHidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField! + conversionConstant)" + " in European Shoe Size"
        womensShoeSizeTextField.resignFirstResponder()
        womensShoeSizeTextField.clearsOnBeginEditing = true
        
        
        
    }

}

