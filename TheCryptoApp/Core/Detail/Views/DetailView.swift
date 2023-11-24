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
   @Binding var coin: CoinModel?
    
    init(coin: Binding<CoinModel?>) {
        self._coin = coin
        print("Int Detail View for \(coin.wrappedValue?.name)")
    }
    
    var body: some View {
        
        VStack {
            Text(coin?.name ?? "")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: .constant(dev.coin))
    }
}
