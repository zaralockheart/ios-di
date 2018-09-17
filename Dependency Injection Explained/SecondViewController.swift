//
//  SecondViewController.swift
//  Dependency Injection Explained
//
//  Created by Muhammad Yusuf Rosman on 16/09/2018.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)

        someService.doStuff()
    }


}
