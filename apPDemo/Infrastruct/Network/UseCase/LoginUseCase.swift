//
//  LoginUseCase.swift
//  apPDemo
//
//  Created by Gabriel Paschoal on 11/03/23.
//

import Foundation

protocol LoginUseCaseProtocol {
    func login() -> Customer?
}

class LoginUseCase: LoginUseCaseProtocol {
    func login() -> Customer? {
        LoginService(endPoint: "CustomerResponse").fetch()
    }
}
