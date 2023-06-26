//
//  EditToDoItemInteractor.swift
//  ToDo
//
//  Created by Руслан on 26.06.2023.
//

import Foundation
import Combine
import SwiftUI

struct EditToDoItemState {
     var mode: EditToDoItemMode
     var onEnded: () -> Void
     var content: String
}

enum EditToDoItemIntents {
    case changeContent(content: String)
    case save
    case delete
}

class EditToDoItemInteractor: ObservableObject {
    @Published
    private(set) var state: EditToDoItemState
    
    init(mode: EditToDoItemMode, onEnded: @escaping () -> Void) {
        self.state = EditToDoItemState(mode: mode, onEnded: onEnded, content: "")
    }
    
    func process(intent: EditToDoItemIntents) {
        switch intent {
        case .changeContent(let content):
            state.content = content
            
        case .save:
            switch state.mode {
            case .create:
                ToDoService.instance.createItem(withContent: state.content)
                
            case .edit(let item):
                ToDoService.instance.updateItem(state.content, forItemWithId: item.id)
            }
            
            state.onEnded()
            
        case .delete:
            guard case let .edit(item) = state.mode else {
                return
            }
            
            ToDoService.instance.removeItem(byId: item.id)

            state.onEnded()
            
        }
    }
}
