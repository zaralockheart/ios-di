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
        let uiController = FirstViewController()
        if let view = uiController as FirstViewController? {
            
            let presenter: FirstPresenterProtocol & FirstViewInteractorOutputProtocol = FirstViewPresenter()
            let wireFrame: FirstViewWireFrameProtocol = FirstViewWireFrame()
            let interactor: FirstViewInteractorInputProtocol = FirstViewInteractor()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return view
        }
        
        return UIViewController()
    }
    
    func navigateToSecondViewController() {
        
    }
}
