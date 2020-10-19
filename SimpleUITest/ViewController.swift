//
//  ViewController.swift
//  SimpleUITest
//
//  Created by Ilyas Zhumadilov on 19.10.2020.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Props
    private var toChange = true
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeText()
    }

    // MARK: - Actions
    @IBAction
    func changeTextButtonTapped(_ sender: UIButton) {
        toChange = !toChange
        changeText()
    }
    
    // MARK: - Module functions
    private func changeText() {
        titleLabel.text = toChange ? "New text" : "Old text"
    }
    
}

