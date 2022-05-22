//
//  CircleProgressBarViewModel.swift
//  Apple Timer
//
//  Created by Артур Бодров on 22.05.2022.
//

import SwiftUI

final class CircleProgressBarViewModel: ObservableObject {
    // MARK: - Properties
    private let staticTotalSeconds: Int
    private var timer: Timer = Timer()
    private var counter: Int

    @Published
    var labelText: String = ""
    var barPersentage: Double = 1

    // MARK: - Init
    init(minutes: Binding<String>) {
        self.counter = (Int(minutes.wrappedValue) ?? 0) * 60
        self.staticTotalSeconds = counter
        self.labelText = "\(counter / 60):00"
        self.timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(countDown),
            userInfo: nil,
            repeats: true
        )
    }
    
    // MARK: - Public methods
    public func invalidateTimer() {
        timer.invalidate()
    }
    
}

// MARK: - Private methods
private extension CircleProgressBarViewModel {

    @objc
    func countDown() {
        if counter > 0 {
            counter -= 1
            barPersentage = updateBarPercentage(counter)
            labelText = updateLabelText(counter)
            print("timer: \(counter)")
        } else {
            // ring()
        }
    }
    
    func updateLabelText(_ nowCounter: Int) -> String {
        let minutes = nowCounter / 60
        let seconds = nowCounter % 60
        let adjustedSeconds: String = seconds == 0 ? "00": "\(seconds)"
        return "\(minutes):\(adjustedSeconds)"
    }
    
    func updateBarPercentage(_ nowCounter: Int) -> Double {
        let totalSeconds = Double(staticTotalSeconds)
        let counterDouble = Double(nowCounter)
        return Double(counterDouble / totalSeconds)
    }
}
