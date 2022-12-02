//
//  SettingsLabelView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 02/12/22.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var text: String
    var image: String
    
    var body: some View {
        HStack {
            Text(text.uppercased())
                .fontWeight(.semibold)
            
            Spacer()
            Image(systemName: image)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(text: "Fruits", image: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
