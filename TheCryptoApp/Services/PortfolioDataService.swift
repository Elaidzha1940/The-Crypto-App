//  /*
//
//  Project: TheCryptoApp
//  File: PortfolioDataService.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.11.2023
//
//  */

import Foundation
import CoreData

class PortfolioDataService {
    
    private let container: NSPersistentContainer
    private let containerName: String = "Portfoliocontainer"
    private let entityName: String = "PortfolioEntity"
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Error loading Core Data. \(error)")
            }
        }
    }
    
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: containerName)
    }
}
