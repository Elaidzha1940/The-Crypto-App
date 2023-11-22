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
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Portfolio View")
                }
            }
            .navigationTitle("Edit Portfolio")
            .navigationBarItems(leading:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                
            })
            )
        }
    }
}

#Preview {
    PortfolioView()
}
