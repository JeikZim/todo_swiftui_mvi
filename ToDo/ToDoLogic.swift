//
//  ToDoList.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import Foundation

class List: Identifiable {
    var items: [ToDoItem]
    
    private init() {
        self.items = []
    }
    static var instance = List()
    
    func createItem(content: String = "") {
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

struct ToDoItem {
    var id: String
    var date: Date
    var content: String
    
    init(id: String = UUID().uuidString, content: String = "") {
        self.id = id
        self.date = Date()
        self.content = content
    }
}
