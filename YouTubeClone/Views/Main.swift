//
//  Main.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 14.10.2023.
//

import SwiftUI

struct Main: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                mainView
            } else {
               LoginView()
            }
        }
    }
    
    @ViewBuilder
    var mainView: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
            FavouritesView()
                .tabItem {
                    Label("Favourites", systemImage: "heart")
                }
        }
        .accentColor(.red)
    }
}

#Preview {
    Main()
}
