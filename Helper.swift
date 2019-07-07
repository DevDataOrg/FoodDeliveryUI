//
//  Helper.swift
//  FoodDeliveryUI
//
//  Created by Frank Bara on 7/6/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import Foundation
import SwiftUI

enum Categories {
    case burger
    case pasta
    case pizza
    case dessert
}

func filterData(by category: Categories ) -> [Food] {
    var filteredArray = [Food]()
    
    for food in foodData {
        if food.category == category {
            filteredArray.append(food)
        }
    }
    
    return filteredArray
}

func categoryString(for category: Categories) -> String {
    switch category {
    case .pizza:
        return "Pizza"
    case .pasta:
        return "Pasta"
    case .burger:
        return "Burger"
    case .dessert:
        return "Dessert"
    }
}
