//  /*
//
//  Project: TheCryptoApp
//  File: TheCryptoAppApp.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.11.2023
//
//  */

import SwiftUI

@main
struct TheCryptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
