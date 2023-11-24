//  /*
//
//  Project: TheCryptoApp
//  File: DetailView.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.11.2023.
//
//  */

import SwiftUI

struct DetailView: View {
    let coin: CoinModel
    
    var body: some View {
        
        VStack {
            Text(coin.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
