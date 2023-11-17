//  /*
//
//  Project: TheCryptoApp
//  File: CoinDataService.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.11.2023
//
//  */

import Foundation

class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    
    init() {
        getCoins()
    }
    
    private func getCoins() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h")
        else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap { (outout) -> Data in
                guard let response = outout.response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300
            }
    }
}
