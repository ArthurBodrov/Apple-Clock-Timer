//
//  Apple_TimerApp.swift
//  Apple Timer
//
//  Created by Артур Бодров on 16.05.2022.
//

import SwiftUI

@main
struct Apple_TimerApp: App {
    var body: some Scene {
        WindowGroup {
            TimerView(viewModel: TimerViewModel())
        }
    }
}
