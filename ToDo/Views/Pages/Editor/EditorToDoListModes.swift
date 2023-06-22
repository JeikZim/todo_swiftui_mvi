//
//  EditorToDoListModes.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import Foundation

enum EditorToDoListModes {
    case creating(someParam: EnumInEnum)
    case editinig
    
    enum EnumInEnum: String /* Some type */ {
        case c1 = "Raw value"
        case c2
        case c3
    }
}

// use .creating, .editing
// var editorMode: EditorToDoListModes = .creating(someParam: .c2)
/*
 
 swiych editorMode {
    case .creating(let param) where param == .c1:
        print("Age")
    case .editing:
        print("Something")
 }
 
 */
