//
//  ContentView.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ToDoListPage()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ToDoListService.instance)
    }
}
#endif
