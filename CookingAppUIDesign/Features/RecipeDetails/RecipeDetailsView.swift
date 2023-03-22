//
//  RecipeDetailsView.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 22/03/2023.
//

import SwiftUI

struct RecipeDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    let recipe: Recipe
    
    var body: some View {
        VStack {
            ZStack {
                recipe.image
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: UIScreen.main.bounds.width,
                        height: UIScreen.main.bounds.height
                    )
                    .ignoresSafeArea()
                
                Color.AppLightGrayColor
                    .opacity(0.95)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 10) {
                    recipe.image
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: UIScreen.main.bounds.width * 0.50,
                            height: UIScreen.main.bounds.width * 0.50,
                            alignment: .center
                        )
                        .clipShape(Circle())
                        .padding(.top, 40)
                    
                    Text(recipe.title)
                        .font(.system(size: 22, weight: .bold))
                    
                    HStack {
                        Text("Time: 25 min")
                            .padding(.trailing)
                        Spacer()
                        Text("Serve: 2 people")
                            .padding(.leading)
                    }
                    
                    Text("Ingredients")
                        .font(.system(size: 22, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                  
                    ForEach(recipe.ingredients, id: \.self) { ingredient in
                        HStack(alignment: .center) {
                            Circle()
                                .frame(width: 8, height: 8)
                            Text(ingredient)
                            Spacer()
                        }
                    }
                    
                    Spacer()
                }
                .overlay(
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.BackgroundOverlayColor)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.AppLightGrayColor)
                            )
                    }
                    , alignment: .topLeading
                )
                .padding()
            }
        }
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(recipe: RecipeService.instance.getRecommended()[0])
    }
}
