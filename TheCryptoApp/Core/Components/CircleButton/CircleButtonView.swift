//  /*
//
//  Project: TheCryptoApp
//  File: CircleButtonView.swift
//  Created by Elaidzha Shchukin
//  Date: 16.11.2023
//
//  */

import SwiftUI

struct CircleButtonView: View {
    let iconName: String
    
    var body: some View {
        
        Image(systemName: iconName)
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(color: Color.theme.accent.opacity(0.20),
                    radius: 10, x: 0, y: 0)
            .padding()
    }
}

#Preview {
    Group {
        CircleButtonView(iconName: "info")
        
        CircleButtonView(iconName: "plus")
            .colorScheme(.dark)
    }
}
