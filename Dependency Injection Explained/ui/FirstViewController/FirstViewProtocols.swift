//
//  FirstViewProtocols.swift
//  Dependency Injection Explained
//
//  Created by Muhammad Yusuf Rosman on 18/09/2018.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import UIKit

// HEY!!!! FUCKING MAKE THIS FILE FIRST!!!!!!! DON'T CREATE THE PROTOCOLS IN THE CLASS COZ THAT WILL JUST MAKE FUCKING NEW GUY WONDERED WHY THE FUCK YOU CREATE THE PROTOCOLS OUT OF NO WHERE

// First, let's create one for our view
protocol FirstViewProtocol: class {
    // Remember, our view only relate to presenter
    var presenter: FirstPresenterProtocol? { get set }
    
    // Whatever shits that you want to handle your UI(s)
    func showError()
    
    func showLoading()
    
    func hideLoading()
    
    func showDataToUser(_ posts: [PostModel])
    
}

// Second, our presenter
protocol FirstPresenterProtocol: class {
    // Presenter will ALWAYS need VIEW
    var view: FirstViewProtocol? { get set }
    
    // Do we navigate? If yeah, then you want to call this
    var wireFrame: FirstViewWireFrameProtocol? { get set }
    
    // Got stuff to load?
    var interactor: FirstViewInteractorInputProtocol? { get set }
    
    // VIEW -> PRESENTER
    func callThis()
    
    func getData()
}


// Third, let's create one for our wireframe
protocol FirstViewWireFrameProtocol: class {
    
    // init out UIViewController
    static func createFirstViewModule() -> UIViewController
    
    // This is to navigate
    func navigateToSecondViewController()
}

// Got API / local?
// This is where we start
// There's a reason why "Input" is here, it's because here we start
protocol FirstViewInteractorInputProtocol: class{
    // our interactor will mostly be talking to presenter
    var presenter: FirstViewInteractorOutputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrievePostList()
}

// Got input? Here's the output! Who's holding this? The presenter of course!
protocol FirstViewInteractorOutputProtocol: class{
    // INTERACTOR -> PRESENTER
    func onResponse(_ posts: [PostModel])
    func onError()
}
