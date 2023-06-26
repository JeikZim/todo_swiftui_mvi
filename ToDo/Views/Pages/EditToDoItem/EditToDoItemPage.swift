//
//  EditorToDoItemPage.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import SwiftUI

struct EditToDoItemPage: View {
    
    @StateObject
    var interactor: EditToDoItemInteractor
    
    @State
    private var content: String
    
    init(mode: EditToDoItemMode, onEnded: @escaping () -> Void) {
        _interactor = StateObject(wrappedValue: EditToDoItemInteractor(mode: mode, onEnded: onEnded))
        
        guard case let .edit(item) = mode else {
            self.content = ""
            return
        }
        self.content = item.content
    }
    
    var body: some View {
        VStack {
            EditItemForm(
                content: $content,
                saveButtonTitle: interactor.state.mode.isEditing ? "Edit" : "Add",
                saveAction: { interactor.process(intent: .save) }
            )
            .navigationTitle(interactor.state.mode.isEditing ? "Note editing" : "New note")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    if interactor.state.mode.isEditing {
                        Button("Delete", action: { interactor.process(intent: .delete) })
                            .font(.system(size: 16.5, weight: .regular))
                            .foregroundColor(.red)
                        
                    }
                }
            }
        }
        .onChange(of: content, perform: { newContent in
            interactor.process(intent: .changeContent(content: newContent)) })
    }
}

#if DEBUG
struct EditToDoItemPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EditToDoItemPage(mode: .edit(item: ToDoItem.mockItem1()), onEnded: {  })
        }
    }
}
#endif
