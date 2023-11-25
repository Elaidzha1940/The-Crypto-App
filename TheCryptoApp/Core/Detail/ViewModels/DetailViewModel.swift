//  /*
//
//  Project: TheCryptoApp
//  File: DetailViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.11.2023
//
//

import Foundation

class DetailViewModel {
    
    private let coinDetailService: CoinDetailDataService
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
    }
}
