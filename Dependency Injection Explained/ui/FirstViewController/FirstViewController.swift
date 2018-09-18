//
//  FirstViewController.swift
//  Dependency Injection Explained
//
//  Created by Kyle Lee on 7/1/18.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FirstVC"

        setupUis()

        someService.doStuff()
        
    }

    @objc func buttonAction(_ sender: UIButton!) {
        let vc = SecondViewController(someService: someService)
        present(vc, animated: false)
//        self.navigationController?.pushViewController(vc, animated: false)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
}
