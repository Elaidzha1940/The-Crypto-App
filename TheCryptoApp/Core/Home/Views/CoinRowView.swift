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
    let showHoldingsColumn: Bool
    
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
            if showHoldingsColumn{
                VStack(alignment: .trailing) {
                    Text(coin.currentHoldingsValue.asCurrencyWith6Decimals())
                    Text((coin.currentHoldings ?? 0).asNumbeString())
                }
                .foregroundColor(Color.theme.accent)
            }
            VStack(alignment: .trailing) {
                Text(coin.currentPrice.asCurrencyWith6Decimals())
                    .foregroundColor(Color.theme.accent)
                Text(coin.priceChangePercentage24H!.asPresentString())
                    .foregroundColor(
                        coin.priceChangePercentage24H! >= 0 ?
                        Color.theme.darkgreen :
                            Color.theme.darkred
                    )
            }
            .frame(width: UIScreen.main.bounds.width / 3.2, alignment: .trailing)
        }
        .font(.system(size: 15, weight: .bold, design: .rounded))
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin, showHoldingsColumn: true)
        
    }
}
