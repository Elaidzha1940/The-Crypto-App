//  /*
//
//  Project: TheCryptoApp
//  File: CoinImageViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date:19.11.2023
//
//  */

import Foundation
import SwiftUI

class CoinImageViewModel: ObservableObject {
    @Published var image: UIImage?
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(urlString: coin.image)
        getImage()
    }
    
    private func getImage() {
        
    }
}
