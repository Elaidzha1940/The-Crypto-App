//  /*
//
//  Project: TheCryptoApp
//  File: Color.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.11.2023
//
//  */

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let darkgreen = Color("DarkMintColor")
    let darkred = Color("DarkRedColor")
    let secondaryText = Color("SecondaryTextColor")
}
