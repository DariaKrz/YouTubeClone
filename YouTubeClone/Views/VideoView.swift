//
//  VideoView.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 14.10.2023.
//

import SwiftUI
import WebKit

struct VideoView: View {
    var body: some View {
        VideoOneView(videoId: "CX-BdDHW0Ho")
            .frame(minWidth: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
            .cornerRadius(12)
            .padding(.horizontal, 24)
        Spacer()
    }
}


#Preview {
    VideoView()
}
