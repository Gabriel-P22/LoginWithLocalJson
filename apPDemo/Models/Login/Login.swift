//
//  Login.swift
//  apPDemo
//
//  Created by Gabriel Paschoal on 11/03/23.
//

import SwiftUI

struct Login: View {
    
    @ObservedObject var viewModel: LoginViewModel
    @State var emailList: [String] = []
    
    var body: some View {
        if viewModel.loginIsEnabled {
            Text("Hello, \(viewModel.data?.name ?? "")")
        } else {
            Text("report your email")
        }
        
        if viewModel.login {
            TextField("", text: $viewModel.email)
                .border($viewModel.fieldError.wrappedValue ? .red : .black, width: 1)
                .padding(10)
            
            Button {
                viewModel.makeLogin()
            } label: {
                Text("Login")
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(viewModel: LoginViewModel(useCase: LoginUseCase()))
    }
}
