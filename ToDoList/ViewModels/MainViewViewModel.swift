//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import Foundation
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        // this is a listener when user signs in and out every time
        self.handler = Auth.auth().addStateDidChangeListener({ [weak self] _, user in
            DispatchQueue.main.async{
                self?.currentUserId = user?.uid ?? ""
            }
        })
        
    }
    
    public var isSignedIn: Bool = {
        return Auth.auth().currentUser != nil
    }()
}
