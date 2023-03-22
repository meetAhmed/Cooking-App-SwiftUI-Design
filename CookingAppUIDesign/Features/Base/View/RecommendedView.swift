//
//  RecommendedView.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 22/03/2023.
//

import SwiftUI

struct RecommendedView: View {
    let recipe: Recipe
    
    var body: some View {
        ZStack(alignment: .bottom) {
            recipe.image
                .resizable()
                .scaledToFill()
            
            Color.BackgroundOverlayColor
                .opacity(0.5)
                .ignoresSafeArea()
         
            Text(recipe.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.AppLightGrayColor)
                .font(.system(size: 14, weight: .medium))
                .minimumScaleFactor(0.7)
                .padding(5)
        }
        .frame(
            width: UIScreen.main.bounds.width * 0.60,
            height: UIScreen.main.bounds.height * 0.45
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(5)
    }
}

struct RecommendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedView(recipe: RecipeService.instance.getRecommended()[0])
    }
}
