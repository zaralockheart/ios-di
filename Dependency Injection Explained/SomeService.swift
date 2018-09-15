//
//  SomeService.swift
//  Dependency Injection Explained
//
//  Created by Kyle Lee on 7/1/18.
//  Copyright © 2018 Kyle Lee. All rights reserved.
//

import Foundation

class SomeService {
    
    private init() {}
    static let shared = SomeService()
    
    func doStuff() {
        print("Did Stuff")
    }
    
}
