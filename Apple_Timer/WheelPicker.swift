//
//  WheelPicker.swift
//  Apple Timer
//
//  Created by Артур Бодров on 22.05.2022.
//

import SwiftUI

struct WheelPicker: View {
    var minutes: [String] = Array(1..<60).map { String($0) }
    @Binding
    var selectedMinutes: String

    var body: some View {
        Picker("", selection: $selectedMinutes) {
            ForEach(minutes, id: \.self) { minute in
                Text(minute)
                    .foregroundColor(.white.opacity(0.8))
            }
        }
        .pickerStyle(.wheel)
        .frame(height: 350)
        .overlay(
            Text("min")
                .foregroundColor(.white.opacity(0.8))
                .padding(.leading, 60)
        )
    }
}

struct WheelPicker_Previews: PreviewProvider {
    static var previews: some View {
        WheelPicker(selectedMinutes: .init(get: { return "3"}, set: { _ in }))
    }
}
