//
//  ViewController.swift
//  Social Integration
//
//  Created by Usama Sadiq on 12/21/19.
//  Copyright © 2019 Usama Sadiq. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var logoutButton: CustomButton!
    
    @IBOutlet weak var fbLogiButton: FBLoginButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fbLogiButton.delegate = self as? LoginButtonDelegate
        
        fbLogiButton.permissions = ["public_profile", "email"]
        
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
    }
    
    func loginButton(_ loginButton: FBLoginButton!, didCompleteWithResult result: LoginManagerLoginResult!, error: Error!) {
        print("User Logged In")

        if ((error) != nil)
        {
            // Process error
        }
        else if result.isCancelled {
            // Handle cancellations
        }
        else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if result.grantedPermissions.contains("email")
            {
                // Do work
            }
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBLoginButton!) {
            print("User Logged Out")
        }
    @IBAction func fbLoginButtonTapped(_ sender: UIButton) {
        
    }
    
    
    
}

