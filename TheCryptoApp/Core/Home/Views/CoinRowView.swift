//  /*
//
//  Project: TheCryptoApp
//  CoinRowView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.11.2023.
//
//  */

import SwiftUI

struct CoinRowView: View {
    let coin: CoinModel
    
    var body: some View {
        
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
            Spacer()
            VStack(alignment: .trailing) {
                Text("\(coin.currentPrice)")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(Color.theme.accent)
                Text("\(coin.priceChangePercentage24H ?? 0)%")
                    .foregroundColor(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ?
                        Color.theme.darkgreen : Color.theme.darkred
                    )
            }
        }
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin)
        
    }
}
