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
    
    private func getURLForFolder(folderName: String) -> URL? {
        
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(folderName)
    }
    
    private func getURLForImage(imageName: String, folderName: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName: folderName) else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName)
    }
}
