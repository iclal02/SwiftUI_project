//
//  ContentView.swift
//  myFamSwiftUI
//
//  Created by icos on 29.10.2025.
//

import SwiftUI

struct listeView: View {
    var body: some View {
        
        NavigationView {
            
            List(myFams){ person in
                NavigationLink(
                    
                    destination: detayView(secilenkisi: person),
                    label: { listeRowView(secilenkisi: person) }
                    
                    )
            }.navigationTitle("ico's fam <3 ")
        }
    }
}

#Preview {
    listeView()
}
