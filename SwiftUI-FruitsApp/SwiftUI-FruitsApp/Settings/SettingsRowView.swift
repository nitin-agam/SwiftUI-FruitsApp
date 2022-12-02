//
//  SettingsRowView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 02/12/22.
//

import SwiftUI

struct SettingsRowView: View {
    
    var leftValue: String
    var rightValue: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 5)
            
            HStack {
                Text(leftValue)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if let contentValue = rightValue {
                    Text(contentValue)
                } else if let linkLabelString = linkLabel,
                          let urlString = linkDestination,
                let url = URL(string: urlString) {
                    Link(linkLabelString, destination: url)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.blue)
                    
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(leftValue: "Developer", rightValue: "Nitin Aggarwal")
                .previewLayout(.sizeThatFits)
                .padding()
            
            SettingsRowView(leftValue: "Profile", linkLabel: "GitHub", linkDestination: "https://github.com/nitin-agam")
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
