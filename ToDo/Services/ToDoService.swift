//
//  ToDoList.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import Foundation
import SwiftUI

class ToDoList: ObservableObject {
    @Published var items: [ToDoItem] = []
    static var instance = ToDoList()
    
    private init() {}
    
    func createItem(content: String) {
        items.append(ToDoItem(content: content))
    }
    
    func removeItem(byId: String) {
        items.removeAll { $0.id == byId }
    }
    
    func updateItme(byId: String, content: String) {
        guard var item = items.first(where: { $0.id == byId }) else {
            return
        }
                
        item.content = content
    }
}

struct ToDoItem: Identifiable {
    var id: String
    var date: String
    var content: String
    
    init(id: String = UUID().uuidString, content: String = "") {
        self.id = id
        self.date = Date().toString()
        self.content = content
    }
}
