//
//  ContentView.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import SwiftUI

struct ToDoList: View {
    @EnvironmentObject var todoList: ToDoListService
    
    var body: some View {
        if todoList.items.isEmpty {
            Text("No items")
                .padding(.all)
                .font(
                    .system(
                        size: 24,
                        weight: .bold,
                        design: .monospaced
                    )
                )
                .foregroundColor(.gray)
        } else {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 8) {
                    ForEach(todoList.items) { item in
                        Button (action: {}) {
                            ToDoRow(item: item, itemPressed: {})
                        }
                        .buttonStyle(PlainButtonStyle())
                        Divider()
                    }
                }
            }
        }
    }
}

#if DEBUG
struct ToDoList_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList().environmentObject(ToDoListService.instance)
    }
}
#endif
