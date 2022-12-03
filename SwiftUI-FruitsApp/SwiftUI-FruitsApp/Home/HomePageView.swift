//
//  HomePageView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 01/12/22.
//

import SwiftUI

struct HomePageView: View {
    
    // Use @State for simple properties that belong to a single view. They should usually be marked private.
    @State private var isSettingOpened = false
    var fruits: [Fruit] = fruitsData.shuffled()
    
    
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
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isSettingOpened = true
                    } label: {
                        Image(systemName: "gearshape")
                    }
                }
            }
            .sheet(isPresented: $isSettingOpened) {
                SettingsPageView()
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .previewLayout(.sizeThatFits)
    }
}
