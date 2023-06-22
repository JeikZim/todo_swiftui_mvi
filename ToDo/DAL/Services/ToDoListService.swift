//
//  ToDoList.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import Foundation

class ToDoListService: ObservableObject {
    @Published var items: [ToDoListItem] = []
    static var instance = ToDoListService()
    
    private init() {}
    
    func createItem(content: String) {
        items.append(ToDoListItem(content: content))
    }
    
    func removeItem(byId: String) {
        items.removeAll { $0.id == byId }
    }
    
    func updateItme(byId: String, content: String) {
        guard let index = items.firstIndex(where: { $0.id == byId }) else {
            return
        }
                
        items[index].content = content
    }
}

