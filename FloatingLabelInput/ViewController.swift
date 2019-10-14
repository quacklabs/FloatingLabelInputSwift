//
//  ViewController.swift
//  FloatingLabelInput
//
//  Created by Sprinthub on 08/10/2019.
//  Copyright © 2019 Sprinthub Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var usernameInput: FloatingLabelInput!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.hideKeyboardOnTapAround()
        self.usernameInput.becomeFirstResponder()
    }

    func hideKeyboardOnTapAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }
}

