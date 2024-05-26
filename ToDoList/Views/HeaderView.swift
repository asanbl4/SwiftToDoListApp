//
//  HeaderView().swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color.pink)
                .rotationEffect(Angle(degrees: 15))
                
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .bold()
                
                Text("Subtitle")
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
                    
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
