//
//  FruitRowView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 01/12/22.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 12) {
            
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
                .shadow(radius: 4)
            
            VStack(alignment: .leading, spacing: 5) {
                
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(fruit.headline)
                    .font(.callout)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
