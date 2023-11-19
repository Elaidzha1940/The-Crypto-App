//  /*
//
//  Project: TheCryptoApp
//  File: LocalFileManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 19.11.2023
//
//  */

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager() // Singletone
    private init() { }
    
    func sameImage(image: UIImage) {
        
        guard
            let data = image.pngData(),
            let url = URL(string: "")
        else { return }
        
        do {
            try data.write(to: url)
        } catch let error {
            print("Error saving image. \(error)")
        }
    }
}
