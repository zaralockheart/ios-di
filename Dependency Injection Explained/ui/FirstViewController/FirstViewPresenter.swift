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
    
    func callThis() {
        // Why we do this? Alright, this is for the sake of separation between UI logic and business logic
        print("Hey! You called me!")
    }
    
    func getData(){
        // Let's call get datas!!!
        interactor?.retrievePostList()
    }
    
}

// Here's where we handle response from server / local
// Basically the idea is jsut now you go inside, now we're going out for sunshine
extension FirstViewPresenter: FirstViewInteractorOutputProtocol {
    func onResponse(_ posts: [PostModel]) {
        view?.showDataToUser(posts)
    }
    
    func onError() {
        
    }
    
    
}
