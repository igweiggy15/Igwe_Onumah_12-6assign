//
//  LoginViewController.swift
//  assign2
//
//  Created by Igwe Onumah on 12/6/19.
//  Copyright © 2019 Igwe Onumah. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        navigateToMainInterface()
    }
    
    private func navigateToMainInterface() {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController else {
            return
        }
        
        print(mainNavigationVC.topViewController)
        print(mainNavigationVC.viewControllers)
    
        if let mainVC = mainNavigationVC.topViewController as? StartViewController {
            mainVC.userName = userNameField.text
            mainVC.passWord = passwordField.text
        }
        
        present(mainNavigationVC, animated: true, completion: nil)
    }
}
