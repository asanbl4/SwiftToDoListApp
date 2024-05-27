//
//  LoginView.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
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
                    TextField("Email Address...", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    SecureField("Password...", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        // Attempt log in
                    }, label: {
                        // Button appearance
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(Color.blue)
                            
                            Text("Log In")
                                .foregroundStyle(Color.white)
                                .bold()
                        }.padding()
                    })
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
