//
//  Extensions.swift
//  ToDoList
//
//  Created by Асанали Батырхан on 27.05.2024.
//

import Foundation
// to convert user model to a dict
extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
