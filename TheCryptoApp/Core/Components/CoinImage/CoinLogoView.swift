//  /*
//
//  Project: TheCryptoApp
//  File: CoinLogoView.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.11.2023
//
//  */

import SwiftUI

struct CoinLogoView: View {
    let coin: CoinModel
    
    var body: some View {
        
        VStack {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            
            Text(coin.symbol.uppercased())
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            Text(coin.name)
                .font(.system(size: 14, weight: .medium, design: .rounded))
                .foregroundColor(Color.theme.secondaryText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

struct CoinLogoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinLogoView(coin: dev.coin)
            CoinLogoView(coin: dev.coin)
                .preferredColorScheme(.dark)
        }
    }
}
