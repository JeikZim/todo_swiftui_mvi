//
//  ToDoListPage.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import SwiftUI

struct ToDoListPage: View {
    @State var todoOpened: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ToDoList()
                VStack {
                    Spacer()
                    NavigationLink(
                        destination: EditorToDoItemPage(todoOpened: $todoOpened),
                        isActive: $todoOpened
                    ) {
                        Text("Add")
                    }
                    .navigationTitle("To Do List")
                }
            }
        }
    }
}

#if DEBUG
struct ToDoListPage_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListPage().environmentObject(ToDoListService.instance)
    }
}
#endif
