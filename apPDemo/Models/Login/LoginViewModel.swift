//
//  LoginViewModel.swift
//  apPDemo
//
//  Created by Gabriel Paschoal on 11/03/23.
//

import Foundation
import SwiftUI

enum LoginState {
    case notLogin
    case login
}

class LoginViewModel: ObservableObject {
    
    private let useCase: LoginUseCaseProtocol
    var loginState: LoginState = .notLogin
    var data: Customer? = nil
    
    var login: Bool = false
    @Published var email = ""
    @Published var loginIsEnabled = false
    @Published var fieldError = false
    
    init(useCase: LoginUseCaseProtocol) {
        self.useCase = useCase
        fetch()
    }
    
    func fetch() {
        let person = useCase.login()
        
        guard let person = person else {
            login = false
            return
        }
        saveData(person: person)
        login = true
    }
    
    func saveData(person: Customer) {
        self.data = person
    }
    
    func loginEnabled() -> Bool {
        login
    }
    
    func hasLogin() -> Bool {
        loginIsEnabled
    }
    
    func makeLogin() {
        if data?.email == email {
            loginState = .login
            loginIsEnabled = true
            fieldError = false
            return
        }
        fieldError = true
        loginIsEnabled = false
        loginState = .notLogin
    }
    
}
