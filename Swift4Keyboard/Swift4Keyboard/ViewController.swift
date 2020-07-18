//
//  ViewController.swift
//  Swift4Keyboard
//
//  Created by momosuke on 2020/07/19.
//  Copyright © 2020 momosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var mailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        mailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }

    @IBAction func signIn(_ sender: Any) {
        
        resultLabel.text = mailTextField.text! + " " + passwordTextField.text!
    }
    
}

