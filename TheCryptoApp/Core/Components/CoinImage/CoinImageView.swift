//  /*
//
//  Prokect: TheCryptoApp
//  File: CoinImageView.swift
//  Created by: Elaidzha Shchukin
//  Date: 19.11.2023
//
//  */

import SwiftUI

struct CoinImageView: View {
    @StateObject var vm: CoinImageViewModel = CoinImageViewModel()
    
    var body: some View {
        
        ZStack {
            if let image = vm.image {
                Image (uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

#Preview {
    CoinImageView()
}
