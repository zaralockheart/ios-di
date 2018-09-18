//
//  FirstViewPresenter.swift
//  Dependency Injection Explained
//
//  Created by Muhammad Yusuf Rosman on 18/09/2018.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

// Bah just create your bloody presenter here

class FirstViewPresenter: FirstPresenterProtocol {
    var view: FirstViewProtocol?
    
    var wireFrame: FirstViewWireFrameProtocol?
    
    var interactor: FirstViewInteractorInputProtocol?
    
    
    
}
