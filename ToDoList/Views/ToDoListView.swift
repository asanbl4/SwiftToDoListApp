//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button(action: {
                    // Action
                }, label: {
                    Image(systemName: "plus")
                })
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "1")
}
