//
//  ToDoItem.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import SwiftUI

struct ToDoItemRow: View {
    
    let item: ToDoItem
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.15), radius: 4, x: 0,y: 2)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(item.content)
                    .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
                
                Text(item.date.toString())
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .medium))
            }
            .padding()
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

#if DEBUG
struct ToDoRow_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemRow(item: ToDoItem.mockItem1())
            .padding()
    }
}
#endif
