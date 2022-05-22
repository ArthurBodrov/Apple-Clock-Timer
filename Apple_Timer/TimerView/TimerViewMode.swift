//
//  TimerViewMode.swift
//  Apple Timer
//
//  Created by Артур Бодров on 22.05.2022.
//

import SwiftUI

enum TimerState {
    case hidden
    case start
    case canceled
    case finished
}

final class TimerViewModel: ObservableObject {
    // MARK: - Properties
    @Published
    var selectedMinutes: String
    @Published
    var timerState: TimerState = .hidden
    
    // MARK: - Init
    init(selectedMinutes: String = "0") {
        self.selectedMinutes = selectedMinutes
    }
}

