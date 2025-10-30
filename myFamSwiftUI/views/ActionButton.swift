//
//  ActionButton.swift
//  myFamSwiftUI
//
//  Created by icos on 30.10.2025.
//

import Foundation
import SwiftUI

struct ActionButton: View {
    
    let iconName: String
    let iconColor: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: iconName)
                .font(.title2) // İkon boyutu
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .foregroundColor(iconColor)
        }
    }
}
