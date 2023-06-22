//
//  ContentView.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import SwiftUI

struct ToDoView: View {
    @ObservedObject private var todoList: ToDoList = ToDoList.mockList1
    @State private var newToDoText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 8) {
                    ForEach(todoList.items) { item in
                        Button (action: {}) {
                            ToDoRow(item)
                        }
                        .buttonStyle(PlainButtonStyle())
                        Divider()
                    }
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button("Add") {
                    todoList.createItem(content: newToDoText)
                }
                Spacer()
                TextField("New ToDo", text: $newToDoText)
                    .textFieldStyle(.roundedBorder)
                    .frame(maxWidth: 250)
            }
        }
    }
}

#if DEBUG
struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
#endif
