//
//  DetailRow.swift
//  FoodDeliveryUI
//
//  Created by Frank Bara on 7/6/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct DetailRow : View {
    var food: Food
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(food.title)
                    .font(.headline)
                    .padding(.top, 10.0)
                Text("$\(food.price)")
                    .font(.caption)
                
            }
            Spacer()
            Button(action: {
                print("Order recieved for \(self.food.title)")
            }) {
                Text("ORDER")
                    .color(Color.white)
            }
            .frame(width: 80.0, height: 50.0)
            .background(Color.orange)
            .cornerRadius(10.0)
        }
        .padding(20.0)
    }
}

#if DEBUG
struct DetailRow_Previews : PreviewProvider {
    static var previews: some View {
        DetailRow(food: foodData[0])
    }
}
#endif
