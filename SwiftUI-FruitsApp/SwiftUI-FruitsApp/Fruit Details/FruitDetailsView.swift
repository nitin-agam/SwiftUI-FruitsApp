//
//  FruitDetailsView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 01/12/22.
//

import SwiftUI

struct FruitDetailsView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 20) {
                    // header image
                    FruitHeaderImageView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(8)
                        
                        // nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        // sub headline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.semibold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(8)
                        
                        // link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .toolbar(.hidden, for: .navigationBar)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
