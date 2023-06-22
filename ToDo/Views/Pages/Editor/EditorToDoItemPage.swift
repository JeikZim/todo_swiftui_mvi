//
//  EditorToDoItemPage.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import SwiftUI

struct EditorToDoItemPage: View {
    // @EnvironmentObject var todoList: ToDoListService
    // @Binding var todoOpened: Bool
    @StateObject var viewModel: EditorToDoViewModel = EditorToDoViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                TextEditor(text: $viewModel.content)
                Button(title: "Add", action: viewModel.save)
                // Button("Add") {
                    // todoList.createItem(content: viewModel.content)
                    // viewModel.content = ""
                    // todoOpened = false
                // }
                .disabled(viewModel.hasContent)
            }
        }
    }
}
//
//#if DEBUG
//struct EditorToDoItemPage_Previews: PreviewProvider {
//    static var previews: some View {
//        EditorToDoItemPage(todoOpened: true).environmentObject(ToDoListService.instance)
//    }
//}
//#endif
