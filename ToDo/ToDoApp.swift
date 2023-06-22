//
//  ToDoApp.swift
//  ToDo
//
//  Created by Руслан on 21.06.2023.
//

import SwiftUI

@main
struct ToDoApp: App {
    @StateObject var todoList = ToDoListService.instance
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(todoList)
        }
    }
}
