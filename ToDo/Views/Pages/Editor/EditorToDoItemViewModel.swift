//
//  EditorToDoItemViewModel.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import Foundation
import SwiftUI

class EditorToDoViewModel: ObservableObject {
    @Published var content: String = ""
//    @Published var hasContent: Bool = content != ""
    // @EnvironmentObject var todoList: ToDoListService
    // @Binding var editorOpened: Bool
    
    // func save {
    //     todoList.createItem(content: self.content)
    //     editorOpened = false
    // }
}
