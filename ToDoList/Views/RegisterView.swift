//
//  RegisterView.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subTitle: "Start organizing todos",
                       angle: -15, background: Color.purple)
            
            Form {
                TextField("Full Name...", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email...", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("Password...", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(title: "Create account", background: .green) {
                    viewModel.register()
                }
                
            }.offset(y: -50)
            
            Spacer()
        }
        
    }
}

#Preview {
    RegisterView()
}
