//
//  FirstViewInteractor.swift
//  Dependency Injection Explained
//
//  Created by Muhammad Yusuf Rosman on 19/09/2018.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class FirstViewInteractor: FirstViewInteractorInputProtocol {
    
    weak var presenter: FirstViewInteractorOutputProtocol?
    
    func retrievePostList() {
        print("we're getting data here!")
        // Assuming we're calling api here, we're going to pass response to the presentor!
        Alamofire
            .request(Endpoints.Posts.fetch.url, method: .get)
            .validate()
            .responseArray(completionHandler: { (response: DataResponse<[PostModel]>) in
                switch response.result {
                case .success(let posts):
                    // Let's pass back to our presenter, back to presenter!
                    self.presenter?.onResponse(posts)
                    
                case .failure( _):
                    print("Fail")
                }
            })
    }
}
