//
//  ToDoItem.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import SwiftUI

struct ToDoRow: View {
    var id: String
    var content: String
    var date: Date
    
    var body: some View {
        HStack() {
            Text(content)
            Spacer()
            Text(date.formatted())
        }
        .font(.title)
    }
}

#if DEBUG
struct ToDoRow_Previews: PreviewProvider {
    static var testItem: ToDoItem = ToDoItem(content: "AAAAA")
    static var previews: some View {
        ToDoRow(id: testItem.id, content: testItem.content, date: testItem.date)
    }
}
#endif
