//
//  StartButtonView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 29/11/22.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            Text("Start the onboarding...")
        }) {
            HStack(spacing: 4) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.2)
            )
        }
        .tint(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
