//
//  LoginView.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 21/03/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var emailTextField = ""
    @State private var passwordTextField = ""
    @State private var isLoggedIn = false
    
    var body: some View {
        ZStack {
            Image.BackgroundImage
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Color.BackgroundOverlayColor
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 5) {
                Spacer()
                
                Image.AppLogo
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Text("Email")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.top, 30)
                TextField("", text: $emailTextField)
                    .padding(15)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                    )
                
                Text("Password")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.top)
                TextField("", text: $passwordTextField)
                    .padding(15)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                    )
                
                Button {
                    isLoggedIn.toggle()
                } label: {
                    Text("Sign In".uppercased())
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.AppYellowColor.opacity(0.75))
                        )
                }
                .padding(.top)
                
                Text("Forgot your password?")
                    .font(.system(size: 16, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .onTapGesture {
                        isLoggedIn.toggle()
                    }
                
                Spacer()
                
                HStack {
                    Text("Don\'t have an account?")
                    Text("Sign Up")
                        .foregroundColor(.AppYellowColor)
                        .fontWeight(.bold)
                        .onTapGesture {
                            isLoggedIn.toggle()
                        }
                }
                .font(.system(size: 16, weight: .regular))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top)
            }
            .padding()
        }
        .preferredColorScheme(.dark)
        .fullScreenCover(isPresented: $isLoggedIn) {
            WelcomeView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
