//  /*
//
//  Project: TheCryptoApp
//  File: HapticManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.11.2023
//
//  */

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
