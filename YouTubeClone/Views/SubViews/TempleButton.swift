//
//  TempleButton.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 15.10.2023.
//

import SwiftUI

struct TempleButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        })
        .padding()
    }
}

#Preview {
    TempleButton(title: "Value", background: Color.pink) {}
}
