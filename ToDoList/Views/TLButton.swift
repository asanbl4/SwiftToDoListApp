//
//  TLButton.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 27.05.2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            // Action
            action()
        }, label: {
            // Button appearance
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }).padding()
    }
}

#Preview {
    TLButton(title: "Button",
             background: .blue,
             action: {
        // Action
    })
}
