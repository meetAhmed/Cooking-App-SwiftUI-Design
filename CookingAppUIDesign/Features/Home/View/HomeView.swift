//
//  HomeView.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 21/03/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm = HomeViewModel()
    
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
            
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Find recipes or chef", text: $vm.searchText)
                        .foregroundColor(.AppYellowColor)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.AppLightGrayColor)
                )
                
                Image(systemName: "text.word.spacing")
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.AppLightGrayColor)
                    )
            }
            
            HStack(spacing: 3) {
                Text("Recently Viewed")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Text("View More")
                    .font(.system(size: 14, weight: .regular))
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .regular))
            }
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.recent) { recentRecipe in
                        RecentView(recipe: recentRecipe)
                            .onTapGesture {
                                vm.selectedRecipe = recentRecipe
                            }
                    }
                }
            }
            
            HStack(spacing: 3) {
                Text("Recommended")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Text("View More")
                    .font(.system(size: 14, weight: .regular))
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .regular))
            }
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.recommended) { recipe in
                        RecommendedView(recipe: recipe)
                            .onTapGesture {
                                vm.selectedRecipe = recipe
                            }
                    }
                }
            }
            
            Spacer()
        }
        .padding()
        .fullScreenCover(item: $vm.selectedRecipe) { recipe in
            RecipeDetailsView(recipe: recipe)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
