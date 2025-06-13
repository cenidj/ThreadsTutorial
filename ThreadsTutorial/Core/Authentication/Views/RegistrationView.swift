//
//  RegistrationView.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/12/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var username = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username", text: $email)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button {

            } label: {
                Text("Sign Up")
                    .modifier(ThreadsAuthButtonModifier())
            }
            .padding(.vertical)
        
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    RegistrationView()
}
