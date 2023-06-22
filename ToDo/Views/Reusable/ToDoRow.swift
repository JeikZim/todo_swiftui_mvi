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
    var itemPressed: () -> Void
    
    init(item: ToDoListItem, itemPressed: @escaping () -> Void) {
        self.id = item.id
        self.content = item.content
        self.date = item.date
        self.itemPressed = itemPressed
    }
    
    var body: some View {
        Button (action: itemPressed) {
            HStack() {
                Text(content)
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
                    HStack {
                        Button("✅") {
                            ToDoListService.instance.removeItem(byId: id)
                        }
                        Button("❌") {
                            ToDoListService.instance.removeItem(byId: id)
                        }
                    }
                    Spacer()
                }
                .font(.largeTitle)
//                .fontWeight(.bold)
                .padding(.bottom, 5)
            }
            .font(.title2)
            .padding(.all, 8)
            .foregroundColor(.black)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#if DEBUG
struct ToDoRow_Previews: PreviewProvider {
    static var previews: some View {
        ToDoRow(item: ToDoList.mockItem1, itemPressed: {})
    }
}
#endif
