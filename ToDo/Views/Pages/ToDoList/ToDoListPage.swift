//
//  ToDoListPage.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import SwiftUI

struct ToDoListPage: View {
    
    @State
    var creationOpened: Bool = false
    @State
    var editingItem: ToDoItem?
    
    @StateObject
    var interactor: ToDoListInteractor = ToDoListInteractor()
    
    var body: some View {
        NavigationView {
            ZStack {
                ToDoItemsList(
                    items: interactor.state.toDoItems,
                    selectedItem: $editingItem,
                    itemDestination: { item in
                        EditToDoItemPage(
                            mode: .edit(item: item),
                            onEnded: {editingItem = nil}
                        )
                    }
                    
                )
                
                VStack {
                    Spacer()
                    
                    NavigationLink(
                        "Add new note",
                        destination: EditToDoItemPage(
                            mode: .create,
                            onEnded: { creationOpened = false }
                        ),
                        isActive: $creationOpened
                    )
                }
            }
            .navigationTitle("To Do")
        }
    }
}

#if DEBUG
struct ToDoListPage_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListPage()
    }
}
#endif
