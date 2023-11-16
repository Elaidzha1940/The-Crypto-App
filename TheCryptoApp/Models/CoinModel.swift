//  /*
//
//  Project: TheCryptoApp
//  File: CoinModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.11.2023
//
//  /*

import Foundation

// Coin Gecko API info
/*
 
 URl:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en
 
 JSON Response:
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
     "current_price": 36202,
     "market_cap": 707065705932,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 759729931543,
     "total_volume": 26099351964,
     "high_24h": 37904,
     "low_24h": 35579,
     "price_change_24h": -1622.0380417709166,
     "price_change_percentage_24h": -4.28834,
     "market_cap_change_24h": -32085146103.808594,
     "market_cap_change_percentage_24h": -4.34081,
     "circulating_supply": 19544287,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -47.59293,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 53262.15188,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-11-16T23:46:34.975Z",
     "sparkline_in_7d": {
       "price": [
         36401.767595186626,
         36335.308944018856,
       ]
     },
     "price_change_percentage_24h_in_currency": -4.288340929998626
   }
 
 */


// MARK: - Welcome
struct CoinModel {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Int?
    let totalVolume, high24H, low24H: Int?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Int?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let roi: NSNull?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
}

// MARK: - SparklineIn7D
struct SparklineIn7D {
    let price: [Double]?
}
