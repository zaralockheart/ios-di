//
//  FirstViewController.swift
//  Dependency Injection Explained
//
//  Created by Yusuf on 7/1/18.
//  Copyright © 2018 Yusuf. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var presenter: FirstPresenterProtocol?
    
    // Our model
    var postList: [PostModel] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FirstVC"
        setupUis()

        // Ever heard of MVP? Model, View, Presenter? Here, the Model is called = Entity
        // So, View, i, Presenter, Entity , r, what's i and r stand for, nigga be patience!
        // view only talks to presenter, let's call our presenter function
        self.presenter?.callThis()
        
//        someService.doStuff() <-- Ignore this, just the DI part
    }

    @objc func buttonAction(_ sender: UIButton!) {
        presenter?.getData()
//        let vc = SecondViewController(someService: someService)
//        present(vc, animated: false)
//        self.navigationController?.pushViewController(vc, animated: false)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
}

// This is equivalent to class FirstViewController: BaseViewController, FirstViewProtocol
// But apparently I've seen people separate listener, so let's just follow
extension FirstViewController : FirstViewProtocol {
    func showDataToUser(_ posts: [PostModel]) {
        // Show the response to user!
        self.postList = posts
        print(self.postList[0].imageUrl)
    }
    
    
    func showError() {
        
    }
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
    
    
}

