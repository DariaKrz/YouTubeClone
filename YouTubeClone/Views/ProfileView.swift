//
//  ProfileView.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 14.10.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    @State private var isLoading = false
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .red))
                        .scaleEffect(3)
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            startNetworkingCall()
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.black)
            .frame(width: 80, height: 80)
            .padding()
        
        VStack(alignment: .leading, spacing: 5) {
                Form {
                    HStack {
                        VStack {
                            Image(systemName: "person.circle.fill")
                        }
                        HStack {
                            Text("Name: ")
                                .bold()
                            Text(user.name)
                        }
                    }
                    .padding(1)
                    HStack {
                        VStack {
                            Image(systemName: "envelope.circle.fill")
                        }
                        HStack {
                            Text("Email: ")
                                .bold()
                            Text(user.email)
                        }
                    }
                    .padding(1)
                }
        }
        .padding()
        Spacer()
        HStack {
            NavigationView {
//                Button {
//                    EditProfileView()
//                } label: {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 10)
//                            .foregroundColor(.black)
//                        Text("Edit Profile")
//                            .foregroundColor(Color.white)
//                            .bold()
//                    }
//                }
//                .frame(width: 160, height: 70)
                
                TempleButton(title: "Log Out", background: .red) {
                    viewModel.logout()
                }
                .frame(width: 160, height: 70)
                //        .foregroundColor(.red)
                //        .tint(.white)
            }
        }
        Spacer()
    }
    
    func startNetworkingCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = false
        }
    }
    
}

#Preview {
    ProfileView()
}
