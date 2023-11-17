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
        
        VStack {
            
            Text(coin.name)
        }
    }
}

#Preview {
    CoinRowView(coin: dev.coin)
}
