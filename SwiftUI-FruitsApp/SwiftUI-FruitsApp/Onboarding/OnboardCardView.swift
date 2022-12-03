//
//  OnboardCardView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 29/11/22.
//

import SwiftUI

struct OnboardCardView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    @State private var isAnimating = false
    
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
          
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 10)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .shadow(radius: 2)
                
                Text(fruit.headline)
                    .font(.title3)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 400)
                    .padding(.horizontal, 16)
                    .lineSpacing(5)
                
                StartButtonView()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview
struct OnboardCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardCardView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
