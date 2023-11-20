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
                .foregroundColor(
                    searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent
                )
            
            TextField("Search by name or symbol... ", text: $searchText)
                .foregroundColor(Color.theme.accent)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(Color.theme.accent)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                    , alignment: .trailing
                )
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
        .padding()
    }
}

#Preview {
    SearchBarView()
}
