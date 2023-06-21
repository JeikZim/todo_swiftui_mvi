//
//  ContentView.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import SwiftUI

struct ToDoList: View {
    let items = {
        var instance = List.instance
        instance.createItem(content: "AAAAA")
        return instance.items
    }
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 8) {
                ForEach (items, id: \.id) { item in
                    ToDoRow(id: item.id, content: item.content, date: item.date)
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
    }
}
#endif
