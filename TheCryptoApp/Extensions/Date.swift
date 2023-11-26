//  /*
//
//  Project: TheCryptoApp
//  File: Date.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.11.2023
//
//  */

import Foundation

extension Date {
    
    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let data = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
}
