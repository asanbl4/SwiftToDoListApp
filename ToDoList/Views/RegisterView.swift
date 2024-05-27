//
//  RegisterView.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subTitle: "Start organizing todos",
                       angle: -15, background: Color.green)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
