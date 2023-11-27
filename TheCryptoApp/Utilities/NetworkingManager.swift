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
    
    enum NetworkingError: LocalizedError {
        case badUrlResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badUrlResponse(url: let url): "[🔥] Bad response from URl: \(url)"
            case .unknown: "[⚠️] Unknown error occured."
                
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, any Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            //.subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({ try handleURLResponse(output: $0, url: url) })
            .retry(3)
            //.receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else {
            throw NetworkingError.badUrlResponse(url: url)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
