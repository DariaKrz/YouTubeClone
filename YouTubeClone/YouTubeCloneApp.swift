//
//  YouTubeCloneApp.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 14.10.2023.
//

import SwiftUI
import FirebaseCore

@main
struct YouTubeCloneApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
    }
}
