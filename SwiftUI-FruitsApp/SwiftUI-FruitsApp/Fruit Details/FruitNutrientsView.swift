//
//  FruitNutrientsView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 02/12/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    private let nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 3)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body)
                        .fontWeight(.semibold)
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                           .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
