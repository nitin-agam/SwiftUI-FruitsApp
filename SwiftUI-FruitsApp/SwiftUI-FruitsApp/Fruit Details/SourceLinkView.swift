//
//  SourceLinkView.swift
//  SwiftUI-FruitsApp
//
//  Created by Nitin Aggarwal on 01/12/22.
//

import SwiftUI

struct SourceLinkView: View {
    
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
