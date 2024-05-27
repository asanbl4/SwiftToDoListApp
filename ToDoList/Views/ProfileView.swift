//
//  ProfileView.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }.navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
