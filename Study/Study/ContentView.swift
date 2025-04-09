//
//  ContentView.swift
//  Study
//
//  Created by Kostiantyn Vasyliev on 2025. 04. 09..
//

import SwiftUI
import Combine

let password = "my_secret_password_123"

class ContentViewModel: ObservableObject {
    @Published var isLoggedIn = false
    @Published var loginText: String = ""
    @Published var passText: String = ""
    
    
    func checkPassword() {
        
        if passText == password {
            print("OLOLO")
        }
        
        let number: UInt32 = 123456
        let unsafeValue: Float = unsafeBitCast(number, to: Float.self)
        print(unsafeValue)
    }
}

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, worldsefdsf!")
            TextField("Login", text: $viewModel.loginText)
                .padding(4)
                .font(.headline)
                .foregroundStyle(.black)
                .border(Color.blue, width: 2)
            TextField("Password", text: $viewModel.passText)
                .padding(4)
                .font(.headline)
                .foregroundStyle(.black)
                .border(Color.blue, width: 2)
            Button {
                viewModel.checkPassword()
            } label: {
                Text("Submit")
                    .padding()
                    .font(.title)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .cornerRadius(20)
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
