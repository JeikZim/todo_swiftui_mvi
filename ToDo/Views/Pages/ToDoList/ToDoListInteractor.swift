//
//  ToDoListInteractor.swift
//  ToDo
//
//  Created by Руслан on 29.06.2023.
//

import Foundation
import SwiftUI
import Combine

struct ToDoListState {
    var toDoItems: [ToDoItem]
}

class ToDoListInteractor: ObservableObject {
    @Published
    private(set) var state: ToDoListState = ToDoListState(toDoItems: [])

    private var cancellables = Set<AnyCancellable>()
    
    init() {
        ToDoService.instance.$items
            .sink {
                [weak self] items in
                self?.state.toDoItems = items
            }
            .store(in: &cancellables)
    }
    
    deinit {
        cancellables.forEach { $0.cancel() }
    }
}
