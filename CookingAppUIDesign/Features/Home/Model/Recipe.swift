//
//  RecentRecipe.swift
//  CookingAppUIDesign
//
//  Created by Ahmed Ali on 22/03/2023.
//

import SwiftUI

struct Recipe: Identifiable {
    let id = UUID().uuidString
    let title: String
    let image: Image
    var ingredients: [String] = [
        "1/2 an iceberg lettuce",
        "2-3 Tbsp sour cream",
        "2 green chilies, sliced ",
        "1 tsp tomato puree ",
        "1 red onion",
        "1/3 red, yellow and green bell pepper"
    ]
}
