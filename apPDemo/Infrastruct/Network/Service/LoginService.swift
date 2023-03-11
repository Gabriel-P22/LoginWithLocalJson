//
//  LoginService.swift
//  apPDemo
//
//  Created by Gabriel Paschoal on 11/03/23.
//

import Foundation

class LoginService {
    let endPoint: String
    
    init(endPoint: String) {
        self.endPoint = endPoint
    }
    
    func fetch() -> Customer  {
        return MockService.fetch(endPoint: endPoint, response: Customer.self)
    }
}
