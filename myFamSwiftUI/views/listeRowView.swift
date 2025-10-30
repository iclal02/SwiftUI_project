//
//  listeRowView.swift
//  myFamSwiftUI
//
//  Created by icos on 30.10.2025.
//

import SwiftUI

struct listeRowView: View {
    
    var secilenkisi : myFam
    
    var body: some View {
        HStack {
            Image(secilenkisi.gorsel)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 150)
                .clipShape(Circle())
                .shadow(radius: 20)
        
            Spacer().frame(width: 50)
            VStack() {
                
                Text(secilenkisi.isim)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(secilenkisi.iliski)
                    .font(.subheadline)
                
            }
            
        }
    }
}

#Preview {
    listeRowView(secilenkisi: myFams[0])
}
