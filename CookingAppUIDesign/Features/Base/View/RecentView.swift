//
//  RecentView.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 22/03/2023.
//

import SwiftUI

struct RecentView: View {
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
            width: UIScreen.main.bounds.width * 0.25,
            height: UIScreen.main.bounds.width * 0.25
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(5)
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView(recipe: RecipeService.instance.getRecent()[0])
    }
}
