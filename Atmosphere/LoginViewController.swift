//
//  LoginViewController.swift
//  Atmosphere
//
//  Created by Evan Scott on 3/13/16.
//  Copyright © 2016 Evan Scott. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad()
    {
        emailTextField.delegate = self
        passwordTextField.delegate = self
        super.viewDidLoad()
    }
    
    @IBAction func onBackButtonPressed(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField === self.emailTextField) {
            passwordTextField.becomeFirstResponder()
        }
        if (textField === self.passwordTextField) {
            passwordTextField.resignFirstResponder()
        }
        
        return true
    }
}

