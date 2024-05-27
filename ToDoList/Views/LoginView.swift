//
//  LoginView.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subTitle: "Get things done",
                           angle: 15,
                           background: Color.pink)
                
                // Login form
                Form {
                    
                    TextField("Email Address...", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    SecureField("Password...", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    TLButton(title: "Log In", background: .blue) {
                        // Attempt log in
                    }
                    
                }.offset(y: -50)
                
                // Create Account
                VStack {
                    Text("Don't have an account yet?")
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }.padding(.bottom , 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
