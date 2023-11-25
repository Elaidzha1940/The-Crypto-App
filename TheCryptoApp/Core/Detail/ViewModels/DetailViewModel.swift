//  /*
//
//  Project: TheCryptoApp
//  File: DetailViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.11.2023
//
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    @Published var overviewStatistics: [StatisticModel] = []
    @Published var additionalStatistics: [StatisticModel] = []
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    @Published var coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .combineLatest($coin)
            .map({ (coinDetailModel) -> (overview: [StatisticModel], additional: [StatisticModel]) in
                
                // overview
                let price = coinModel.currentPrice.asCurrencyWith6Decimals()
                let prcePercentChange = coinModel.priceChangePercentage24H
                let priceStat = StatisticModel(title: "Current price", value: price, percentageChange: prcePercentChange)
                
                let marketCap = "$" + (coinModel.marketCap?.formattedWithAbbreviations() ?? "")
                let marketcapPercentChange = coinModel.marketCapChangePercentage24H
                let marketCapStat = StatisticModel(title: "Market Capitalization", value: marketCap, percentageChange: marketcapPercentChange)
                
                let rank = "\(coinModel.rank)"
                let rankStat = StatisticModel(title: "Rank", value: rank)
                
                let volume = "$" + (coinModel.totalVolume?.formattedWithAbbreviations() ?? "")
                let volumeStat = StatisticModel(title: "Volume", value: volume)
                
                let overviewArray: [StatisticModel] = [
                    priceStat, marketCapStat, rankStat, volumeStat
                ]
                
                // additional
                let high = coinModel.high24H?.asCurrencyWith6Decimals() ?? "n/a"
                let highStat = StatisticModel(title: "24h High", value: high)
                
                let low = coinModel.low24H?.asCurrencyWith6Decimals() ?? "n/a"
                let lowStat = StatisticModel(title: "24H low", value: low)
                
                let prceChange = coinModel.priceChange24H?.asCurrencyWith6Decimals() ?? "n/a"
                let prcePercentChange2 = coinModel.priceChangePercentage24H
                let priceChangeStat = StatisticModel(title: "24H Price Change", value: priceChange, percentageChange: prcePercentChange2)
                
                let marketCapChange = "$" + (coinModel.marketCapChange24H?.formattedWithAbbreviations() ?? "")
                let marketCapPercentChange2 = coinModel.marketCapChangePercentage24
                let marketCapChangeStat = StatisticModel(title: "24H Market Cap Change", value: marketCapChange, percentageChange: marketCapPercentChange2)
                
                let blockTime = coinDetailModel.blockTimeInMinutes ?? 0
                let blockTimeString = blockTime == 0 ? "n/a" : "\(blockTime)"
                let blockStat = StatisticModel(title: "Block Time", value: blockTimeString)
                
                return ([overviewArray], [])
            })
            .sink { (returnedArrays) in
                print("Recievd coin detail data")
                print(returnedArrays.overview)
                print(returnedArrays.additional)
            }
            .store(in: &cancellables)
    }
}
