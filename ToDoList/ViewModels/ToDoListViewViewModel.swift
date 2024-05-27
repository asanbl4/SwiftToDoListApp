//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import Foundation

/// View model for list items view
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var userId: String = ""
    @Published var showingNewItemView = false
    
    init() {}
    
}
