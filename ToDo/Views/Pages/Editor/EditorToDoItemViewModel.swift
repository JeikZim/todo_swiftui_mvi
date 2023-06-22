//
//  EditorToDoItemViewModel.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import Foundation
import SwiftUI

class EditorToDoViewModel: ObservableObject {
    @Published var content: String = ""
//    @Published var hasContent: Binding<Bool>
    
//    init(content: String = "", hasContent: Binding<Bool> = false) {
//        self.content = content
//        self.hasContent = hasContent
//    }
}
