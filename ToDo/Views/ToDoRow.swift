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
    var date: String
    
    init(_ ToDoItem: ToDoItem) {
        self.id = ToDoItem.id
        self.content = ToDoItem.content
        self.date = ToDoItem.date
    }
    
    var body: some View {
        HStack() {
            Text(content)
//                .frame(width: 200)
                .multilineTextAlignment(.leading)
                .padding(.top, 8)
            Spacer()
            Divider()
            VStack {
                Text(date)
                Spacer()
            }
            .padding(.top, 8)
            Divider()
            VStack {
                Button("×") {
                    ToDoList.instance.removeItem(byId: id)
                }
                Spacer()
            }
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.bottom, 5)
        }
        .font(.title2)
        .padding(.all, 8)
        .foregroundColor(.black)
    }
}

#if DEBUG
struct ToDoRow_Previews: PreviewProvider {
    static var testItem: ToDoItem = ToDoList.mockItem1
    
    static var previews: some View {
        ToDoRow(ToDoList.mockItem1)
    }
}
#endif
