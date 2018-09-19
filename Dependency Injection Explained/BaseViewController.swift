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
        let descriptionTextView: UITextView = {
            let textView = UITextView()
            textView.text = "Join us today in our fun and games!"
            textView.font = UIFont.boldSystemFont(ofSize: 18)
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.textAlignment = .center
            textView.isEditable = false
            textView.isScrollEnabled = false
            return textView
        }()
        
        view.addSubview(descriptionTextView)
        
        NSLayoutConstraint.activate([
            descriptionTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

