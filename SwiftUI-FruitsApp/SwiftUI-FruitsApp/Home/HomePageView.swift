//
//  HomePageView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 01/12/22.
//

import SwiftUI

struct HomePageView: View {
    
    @State private var isSettingOpened = false
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack {
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
