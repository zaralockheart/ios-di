//
//  ViewController.swift
//  Dependency Injection Explained
//
//  Created by Kyle Lee on 7/1/18.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FirstVC"

        let startFinishButton = UIButton(type: .system)
        startFinishButton.frame = CGRect(x: 100.0, y: 100.0, width: 100.0, height: 50.0)
        startFinishButton.backgroundColor = .green
        startFinishButton.addTarget(self, action: #selector(ViewController.buttonAction(_:)), for: .touchUpInside)

        self.view.addSubview(startFinishButton)
        
        someService.doStuff()
        view.backgroundColor = .red
    }

    @objc func buttonAction(_ sender: UIButton!) {
        let vc = SecondViewController(someService: someService)
//        present(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)

    }


}

