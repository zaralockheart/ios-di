//
//  BaseViewController.swift
//  Dependency Injection Explained
//
//  Created by Muhammad Yusuf Rosman on 16/09/2018.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var someService: SomeService

    init(someService: SomeService) {
        self.someService = someService
        super.init(nibName: nil, bundle: nil)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

