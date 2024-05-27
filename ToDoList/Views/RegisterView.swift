//
//  RegisterView.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subTitle: "Start organizing todos",
                       angle: -15, background: Color.purple)
            
            Form {
                TextField("Full Name...", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email...", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password...", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(title: "Create account", background: .green) {
                    // Attempt Register
                }
                
            }.offset(y: -50)
            
            Spacer()
        }
        
    }
}

#Preview {
    RegisterView()
}
