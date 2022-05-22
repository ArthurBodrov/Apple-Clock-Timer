//
//  ButtonView.swift
//  Apple Timer
//
//  Created by Артур Бодров on 22.05.2022.
//

import SwiftUI

struct ButtonView: View {
    var viewModel: ButtonViewModel

    var body: some View {
        Button(action: {
            viewModel.action()
        }) {
            Text(viewModel.title)
                .frame(width: 100, height: 100)
                .background(viewModel.backgroundColor)
                .foregroundColor(viewModel.titleColor)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                        .foregroundColor(viewModel.backgroundColor)
                        .padding(-3)
                )
        }
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            ButtonView(viewModel: .cancel {})
            ButtonView(viewModel: .start {})
        }
    }
}
