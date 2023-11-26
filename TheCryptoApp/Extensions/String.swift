//  /*
//
//  Project: TheCryptoApp
//  File: String.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.11.2023
//
//  */

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
        
    }
}
