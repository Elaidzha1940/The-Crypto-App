//  /*
//
//  Project: TheCryptoApp
//  File: CircleButtonAnimationView.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.11.2023
//
//  */

import SwiftUI

struct CircleButtonAnimationView: View {
    @Binding var animate: Bool
    
    var body: some View {
        
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeInOut(duration: 1.0) : .none)
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .foregroundColor(.red)
        .frame(width: 100, height: 100)
}
