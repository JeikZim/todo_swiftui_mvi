//
//  EditorToDoListModes.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import Foundation

enum EditToDoItemMode {
    
    case create
    case edit(item: ToDoItem)

    var isEditing: Bool {
        switch self {
            case .create:
                return false
                
            case .edit:
                return true
        }
    }
}
