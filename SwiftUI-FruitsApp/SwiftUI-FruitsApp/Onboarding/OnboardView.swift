//
//  OnboardView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 30/11/22.
//

import SwiftUI

struct OnboardView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                OnboardCardView(fruit: fruit)
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
