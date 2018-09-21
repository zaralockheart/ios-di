//
//  FirstViewWireframe.swift
//  Dependency Injection Explained
//
//  Created by Muhammad Yusuf Rosman on 18/09/2018.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

// Wireframe class is the one handle navigations or init views, don't trippin' and do stupid other stuff... this architecture is freaking hard already

class FirstViewRouter: FirstViewRouterProtocol {
    
    static func createFirstViewModule() -> UIViewController {
        let navCon = UINavigationController()
        let uiController = FirstViewController()
        navCon.viewControllers = [uiController]
        if let view = navCon.viewControllers.first as! FirstViewController? {
            
            
            let presenter: FirstPresenterProtocol & FirstViewInteractorOutputProtocol = FirstViewPresenter()
            let router: FirstViewRouterProtocol = FirstViewRouter()
            let interactor: FirstViewInteractorInputProtocol = FirstViewInteractor()
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return navCon
        }
        
        return UIViewController()
    }
    
    func navigateToSecondViewController(view: FirstViewProtocol) {
        let nextVC = SecondViewController() as UIViewController
        
        
        if let sourceView = view as? UIViewController {
//            sourceView.present(nextVC, animated: true, completion: nil)
            sourceView.navigationController?.pushViewController(nextVC, animated: true)
        }
        
    }
}
