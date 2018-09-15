//
//  ViewController.swift
//  Dependency Injection Explained
//
//  Created by Kyle Lee on 7/1/18.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SomeService.shared.doStuff()
    }

    
}

