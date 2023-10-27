//
//  HomeView.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 14.10.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "video.fill")
                        .resizable()
                        .frame(width: 30, height: 20)
                        .padding(.leading, 20)
                        .padding(.top, 2)
                    Text("YouTube")
                        .font(.title)
                        .bold()
                    Spacer()
                    }
                Spacer()
                }
            .offset(y: -38)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            print("Display a message")
                        } label: {
                            Label("message", systemImage: "message")
                                .foregroundColor(.red)
                        }
                        Button {
                            print("Search a video")
                        } label: {
                            Label("searching", systemImage: "magnifyingglass")
                        }
                    }
                }
            }
    }
    
}

#Preview {
    HomeView()
}
