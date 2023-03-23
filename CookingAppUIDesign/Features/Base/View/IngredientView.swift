//
//  IngredientView.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 22/03/2023.
//

import SwiftUI

struct IngredientView: View {
    let ingredient: String
    
    var body: some View {
        HStack(alignment: .center) {
            Circle()
                .frame(width: 8, height: 8)
            Text(ingredient)
            Spacer()
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView(ingredient: "Example")
    }
}
