//
//  ozelGorselView.swift
//  myFamSwiftUI
//
//  Created by icos on 29.10.2025.
//

import SwiftUI

struct ozelGorselView: View {
    
    var image: Image
    
    
    var body: some View {
        
       image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white , lineWidth: 5)).shadow(radius: 12)
    }
}

#Preview {
    ozelGorselView(image: Image("dad"))
}
