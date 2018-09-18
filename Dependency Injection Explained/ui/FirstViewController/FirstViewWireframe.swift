//
//  FirstViewWireframe.swift
//  Dependency Injection Explained
//
//  Created by Muhammad Yusuf Rosman on 18/09/2018.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

// Wireframe class is the one handle navigations or init views, don't trippin' and do stupid other stuff... this architecture is freaking hard already

class FirstViewWireFrame: FirstViewWireFrameProtocol {
    
    static func createFirstViewModule() -> UIViewController {
        let someService = SomeService.shared
        let uiController = FirstViewController(someService: someService)
        if let view = uiController.childViewControllers.first as? FirstViewController {
            
            let presenter: FirstPresenterProtocol = FirstViewPresenter()
            
            view.presenter = presenter
            
            return view
        }
        
        return UIViewController()
    }
    
    func navigateToSecondViewController() {
        
    }
}
