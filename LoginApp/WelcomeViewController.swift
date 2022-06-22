//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Konstantin Simusev on 22.06.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
}
