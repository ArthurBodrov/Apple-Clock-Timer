//
//  CircleProgressBarView.swift
//  Apple Timer
//
//  Created by Артур Бодров on 22.05.2022.
//

import SwiftUI

struct CircleProgressBarView: View {
    @StateObject
    var viewModel: CircleProgressBarViewModel

    var body: some View {
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
            .foregroundColor(.white.opacity(0.2))
            .background(
                Circle()
                    .trim(from: 0, to: viewModel.barPersentage)
                    .rotation(Angle(degrees: -90))
                    .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                    .foregroundColor(.orange)
                    .animation(.easeInOut(duration: 0.5))
            )
            .overlay(
                Text(viewModel.labelText)
                    .foregroundColor(.white)
                    .font(.system(size: 65, weight: .thin))
            )
            .frame(height: 400)
            .padding(EdgeInsets(top: 40, leading: 18, bottom: .zero, trailing: 18))
            .onDisappear { viewModel.invalidateTimer() }
    }
}
