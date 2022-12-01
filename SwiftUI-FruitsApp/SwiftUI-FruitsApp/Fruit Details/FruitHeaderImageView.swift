//
//  FruitHeaderImageView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 01/12/22.
//

import SwiftUI

struct FruitHeaderImageView: View {
    
    @State private var isAnimatingImage = false
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 5)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderImageView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderImageView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
