//
//  RowExtension.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import Foundation

extension ToDoList {
    var mocitem1: ToDoItem { return ToDoItem(content: "Small") }
    var item2: ToDoItem { return ToDoItem(content: "Lorem Ipsum") }
    var item3: ToDoItem { return ToDoItem(content: "Medium lorem ipsum and some text bla bla bla...") }
    var item4: ToDoItem {
        return ToDoItem(
            content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla maximus sit amet lorem in feugiat. Vestibulum rhoncus non velit pellentesque porttitor. Curabitur ipsum sem, eleifend vitae orci eget, mollis venenatis justo. Quisque nec massa eros. Maecenas arcu lectus, porttitor posuere nunc id, vulputate ultrices elit. Fusce a sem velit. Donec eget lectus sit amet elit finibus dapibus. Cras non ornare massa, id tincidunt turpis. Quisque in ligula ipsum. Aenean in nulla vehicula, malesuada ex in, bibendum enim. Vivamus convallis turpis ut nisi bibendum venenatis. Fusce quam leo, mattis at vestibulum nec, lacinia ac nisi. Aenean a erat gravida, dictum nisl eget, tristique felis. Donec convallis congue est, in tristique leo venenatis luctus. Donec auctor neque at est vulputate, et consectetur tortor ornare."
        )
        
    }
}

