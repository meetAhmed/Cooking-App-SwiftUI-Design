//
//  HomeView.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 21/03/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Good Morning")
                        .font(.system(size: 14))
                    Text("Christina Andrew")
                        .font(.system(size: 22, weight: .bold))
                }
                Spacer()
                Image.UserIcon
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 90)
                    .clipShape(Circle())
            }
            Spacer()
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
