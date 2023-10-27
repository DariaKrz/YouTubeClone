//
//  VidepViewViewModel.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 15.10.2023.
//

import Foundation
import SwiftUI
import WebKit

struct VideoOneView: UIViewRepresentable {
    let videoId: String
    
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else {
            return
        }
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
    
}
