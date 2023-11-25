//  /*
//
//  Project: TheCryptoApp
//  File: ChartView.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.11.2023.
//
//  */

import SwiftUI

struct ChartView: View {
    let data: [Double]
    
    init(coin: CoinModel) {
        data = coin.sparklineIn7D?.price ?? []
    }
    
    var body: some View {
        
        VStack {
            
            
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}
