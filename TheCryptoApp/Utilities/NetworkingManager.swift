//  /*
//
//  Project: TheCryptoApp
//  File: NetworkingManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.11.2023
//
//  */

import Foundation
import Combine

// U don't neet init the class NetworkingManager
class NetworkingManager {
    
    static func download(url: URL) -> AnyPublisher<Data, any Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap { (output) -> Data in
                guard let response = output.response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}
