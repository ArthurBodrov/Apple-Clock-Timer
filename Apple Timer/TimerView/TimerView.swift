//
//  ContentView.swift
//  Apple Timer
//
//  Created by Артур Бодров on 16.05.2022.
//

import SwiftUI

struct TimerView: View {
    @StateObject
    var viewModel: TimerViewModel
    @State
    var showTimer: Bool = false
    

    var body: some View {
        ZStack {
            VStack {
                if showTimer {
                    CircleProgressBarView(viewModel: .init(minutes: $viewModel.selectedMinutes))
                } else {
                    WheelPicker(selectedMinutes: $viewModel.selectedMinutes)
                }

                Buttons
                SettingsView()
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
        .background(.black)
    }
    
    var Buttons: some View {
        HStack {
            ButtonView(viewModel: .cancel {
                showTimer = false
            }).padding(.leading, 10)
            
            Spacer()
            
            ButtonView(viewModel: .start {
                showTimer = true
            }).padding(.trailing, 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(viewModel: TimerViewModel())
    }
}




