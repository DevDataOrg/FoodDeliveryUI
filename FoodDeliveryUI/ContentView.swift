//
//  ContentView.swift
//  FoodDeliveryUI
//
//  Created by Frank Bara on 7/6/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DetailView(currentCategory: .burger)) {
                    CategoryView(imageName: "burger", categoryName: "Burger")
                }
                NavigationLink(destination: DetailView(currentCategory: .pizza)) {
                    CategoryView(imageName: "pizza", categoryName: "Pizza")
                }
                NavigationLink(destination: DetailView(currentCategory: .pasta)) {
                    CategoryView(imageName: "pasta", categoryName: "Pasta")
                }
                NavigationLink(destination: DetailView(currentCategory: .dessert)) {
                    CategoryView(imageName: "cake", categoryName: "Dessert")
                }
            }
        }
    }
}

struct CategoryView : View {
    var imageName: String
    var categoryName: String
    
    var body: some View {
        return ZStack {
            Image(imageName)
                .resizable()
                .aspectRatio(UIImage(named: imageName)!.size, contentMode: .fill)
                .frame(width: 300.0, height: 150.0)
                .clipped()
                .cornerRadius(20.0)
            Spacer()
            Text(categoryName)
                .font(.custom("HelveticaNeue-Medium", size: 50.0))
                .color(Color.white)
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
