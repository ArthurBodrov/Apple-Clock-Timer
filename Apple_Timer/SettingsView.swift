//
//  SettingsView.swift
//  Apple Timer
//
//  Created by Артур Бодров on 22.05.2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        HStack() {
            Text("When Timer Ends")
                .foregroundColor(.white)
                .padding(.leading, 20)
                .font(.system(size: 19))
            Spacer()
            Text("Radar")
                .foregroundColor(.white.opacity(0.5))
                .padding(.trailing, 4)
                .font(.system(size: 19))
            
            Image(systemName: "chevron.forward")
                .resizable()
                .foregroundColor(.white.opacity(0.4))
                .frame(width: 8, height: 14)
                .padding(.trailing, 16)
            
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white).opacity(0.15)
                .frame(width: UIScreen.main.bounds.width - 40, height: 68)
        )
        .padding(.top, 30)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
