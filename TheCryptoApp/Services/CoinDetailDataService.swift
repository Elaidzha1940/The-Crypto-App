//  /*
//
//  Project: TheCryptoApp
//  File: CoinDetailDataService.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.11.2023
//
//  */

import Foundation
import Combine

class CoinDetailDataService {
    
    @Published var allCoins: [CoinModel] = []
    var cancellables = Set<AnyCancellable>()
    
    var coinSubscribtion: AnyCancellable?
    
    init() {
        getCoinDetails()
    }
    
    func getCoinDetails() {
        
        guard let url = URL(string:  "https://api.coingecko.com/api/v3/coins/bitcoin?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false")
        else { return }
        
        coinSubscribtion = NetworkingManager.download(url: url)
        
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscribtion?.cancel()
            })
    }
}
