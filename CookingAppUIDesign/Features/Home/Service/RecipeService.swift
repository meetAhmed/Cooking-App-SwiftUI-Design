//
//  RecipeService.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 22/03/2023.
//

import Foundation

class RecipeService {
    static let instance = RecipeService()
    private init() {}
}

extension RecipeService {
    func getRecent() -> [Recipe] {
        [
            .init(title: "Avacado Salad", image: .RecentImage1),
            .init(title: "Tomato Pizza", image: .RecentImage2),
            .init(title: "Spiced Bean Tacos", image: .RecentImage3)
        ]
    }
    
    func getRecommended() -> [Recipe] {
        [
            .init(title: "Mediterrian Salad", image: .RecommendedImage1),
            .init(title: "Super Veggie Bowl", image: .RecommendedImage2)
        ]
    }
}
