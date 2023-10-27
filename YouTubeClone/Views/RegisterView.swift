//
//  RegisterView.swift
//  YouTubeClone
//
//  Created by Дарья Кукурудза on 15.10.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subTitle: "Let's start", background: Color.red)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TempleButton(title: "Create Account", background: Color.black) {
                    viewModel.register()
                }
             //   .padding()
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
