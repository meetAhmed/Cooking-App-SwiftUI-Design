//
//  WelcomeView.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 21/03/2023.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showHomeView = false
    
    var body: some View {
        ZStack {
            Image.BackgroundImage2
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Color.BackgroundOverlayColor
                .ignoresSafeArea()
            
            VStack {
                Text("Welcome to")
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.top, 30)
                
                Image.AppLogo
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Button {
                    showHomeView.toggle()
                } label: {
                    Text("Start Cooking".uppercased())
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.AppYellowColor.opacity(0.90))
                                .shadow(
                                    color: .black.opacity(0.25),
                                    radius: 8,
                                    x: 0,
                                    y: 4
                                )
                        )
                }
                .padding(.top)
            }
            .padding()
        }
        .preferredColorScheme(.dark)
        .fullScreenCover(isPresented: $showHomeView) {
            HomeView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
