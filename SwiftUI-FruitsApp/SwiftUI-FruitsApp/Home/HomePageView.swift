//
//  HomePageView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 01/12/22.
//

import SwiftUI

struct HomePageView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List(fruits) { fruit in
                NavigationLink {
                    FruitDetailsView(fruit: fruit)
                } label: {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .previewLayout(.sizeThatFits)
    }
}
