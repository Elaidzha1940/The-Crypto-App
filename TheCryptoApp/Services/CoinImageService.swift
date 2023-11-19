//  /*
//
//  Project: TheCryptoApp
//  File: CoinImageService.swift
//  Created by: Elaidzha Shchukin
//  Date: 19.11.2023
//
//  */

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    var imageSubscription: AnyCancellable?
    
    init() {
        //getCoinImage()
    }
    
    private func getCoinImage(urlString: String) {
        
        guard let url = URL(string: urlString) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
}
