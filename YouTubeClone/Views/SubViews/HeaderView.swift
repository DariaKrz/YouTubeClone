//
//  HeaderView.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 15.10.2023.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle: String
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: 0)
        .ignoresSafeArea()
    }
}

#Preview {
    HeaderView(title: "Title", subTitle: "Subtitle", background: Color.blue)
}
