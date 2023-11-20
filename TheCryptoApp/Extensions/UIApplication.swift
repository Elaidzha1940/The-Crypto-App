//  /*
//
//  Project: TheCryptoApp
//  File: UIApplication.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.11.2023
//
//  */

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
