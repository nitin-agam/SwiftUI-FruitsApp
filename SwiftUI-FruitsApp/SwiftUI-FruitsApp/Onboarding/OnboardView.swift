//
//  OnboardView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 30/11/22.
//

import SwiftUI

struct OnboardView: View {
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                OnboardCardView()
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
