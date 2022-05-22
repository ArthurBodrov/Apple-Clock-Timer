//
//  ButtonViewModel.swift
//  Apple Timer
//
//  Created by Артур Бодров on 22.05.2022.
//

import SwiftUI

struct ButtonViewModel {
    var title: String
    var titleColor: Color
    var backgroundColor: Color
    var action: () -> Void
}

extension ButtonViewModel {
    static func cancel(action: @escaping () -> Void) -> ButtonViewModel {
        ButtonViewModel(
            title: "Cancel",
            titleColor: .white,
            backgroundColor: .white.opacity(0.15),
            action: action
        )
    }
    
    static func start(action: @escaping () -> Void) -> ButtonViewModel {
        ButtonViewModel(
            title: "Start",
            titleColor: .green,
            backgroundColor: .green.opacity(0.35),
            action: action
        )
    }
}
