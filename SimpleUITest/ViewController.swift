//
//  ViewController.swift
//  SimpleUITest
//
//  Created by Ilyas Zhumadilov on 19.10.2020.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private weak var passwordTextField: UITextField!
    
    // MARK: - Props
    let expectedPassword = "qwe"

    // MARK: - Actions
    @IBAction
    func loginButtonTapped(_ sender: UIButton) {
        
        guard let password = passwordTextField.text,
              password == expectedPassword else { return }
        
        let newVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "New VC") 
        present(newVC, animated: true, completion: nil)
        
    }
}

