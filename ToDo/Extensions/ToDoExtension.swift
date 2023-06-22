//
//  RowExtension.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import Foundation

extension ToDoList {
    static var mockItem1: ToDoItem { return ToDoItem(content: "Small") }
    static var mockItem2: ToDoItem { return ToDoItem(content: "Lorem Ipsum") }
    static var mockItem3: ToDoItem { return ToDoItem(content: "Medium lorem ipsum and some text bla bla bla...") }
    static var mockItem4: ToDoItem {
        return ToDoItem(
            content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla maximus sit amet lorem in feugiat. Vestibulum rhoncus non velit pellentesque porttitor. Curabitur ipsum sem, eleifend vitae orci eget, mollis venenatis justo."
        )
    }
    static var mockList1: ToDoList {
        ToDoList.instance.items = [ToDoList.mockItem1, ToDoList.mockItem2, ToDoList.mockItem3, ToDoList.mockItem4]

        return ToDoList.instance
    }
}

