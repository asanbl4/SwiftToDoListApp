//
//  User.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 26.05.2024.
//

import Foundation

// Codable is for model to be converted to a dict
struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
