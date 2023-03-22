//
//  HomeViewModel.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 22/03/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var recent = RecipeService.instance.getRecent()
    @Published var recommended = RecipeService.instance.getRecommended()
    @Published var selectedRecipe: Recipe? = nil
}
