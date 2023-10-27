//
//  LoginView.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 15.10.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "YouTube", subTitle: "Open the new world!", background: Color.red)
                
                Form {
                    
                    if !viewModel.errorMassage.isEmpty {
                        Text(viewModel.errorMassage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TempleButton(title: "Log In", background: Color.black) {
                        viewModel.login()
                    }
                 //   .padding()
                }
                
                VStack {
                    Text("New around here?")
                 //   Button("Create an Account") {}
                    NavigationLink("Create an Account", destination: RegisterView())
                        .foregroundColor(.gray)
                }
                .padding(.bottom, 50)
                
                
                Spacer()
            }

        }
    }
}

#Preview {
    LoginView()
}
