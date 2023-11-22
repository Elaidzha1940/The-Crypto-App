//  /*
//
//  Prokect: TheCryptoApp
//  File: PortfolioView.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.11.2023
//
//  */

import SwiftUI

struct PortfolioView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Portfolio View")
                }
            }
        }
        .navigationTitle("Edit Portfolio")
    }
}

#Preview {
    PortfolioView()
}
