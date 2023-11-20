//  /*
//
//  Project: TheCryptoApp
//  File: SearchBarView.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.11.2023
//
//  */

import SwiftUI

struct SearchBarView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        
        HStack {
             Image(systemName: "magnifyingglass")
                .foregroundColor(Color.theme.secondaryText)
            
            TextField("Search by name or symbol... ", text: $searchText)
        }
        .font(.system(size: 17, weight: .semibold, design: .rounded))
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.theme.background)
            .shadow(
                color: Color.theme.accent.opacity(0.2),
                radius: 10, x: 0 ,y: 0)
        )
    }
}

#Preview {
    SearchBarView()
}
