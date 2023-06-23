//
//  ContentView.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ToDoListPage()
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
