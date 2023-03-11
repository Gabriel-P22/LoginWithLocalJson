//
//  ContentView.swift
//  apPDemo
//
//  Created by Gabriel Paschoal on 11/03/23.
//

import SwiftUI

struct ContentView: View {
    
    let service = MockService.fetch(endPoint: "Person", response: Person.self)
    
    var body: some View {
        Login(viewModel: LoginViewModel(useCase: LoginUseCase()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
