//
//  LoadingViewController.swift
//  All Hands
//
//  Created by Andrew Breckenridge on 1/5/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loggedIn = PFUser.currentUser() != nil
        
        if loggedIn {
            performSegueWithIdentifier("segueToMain", sender: self)
        } else {
            performSegueWithIdentifier("segueToLogin", sender: self)
        }
    }
}
