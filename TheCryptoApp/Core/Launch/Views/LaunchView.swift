//  /*
//
//  Project: TheCryptoApp
//  File: LaunchView.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.11.2023
//
//  */

import SwiftUI

struct LaunchView: View {
    @State private var loadingSlashScreen: String = "Welcome to your portfolio..."
    @State private var showLoadingText: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.launch.background
                .ignoresSafeArea()
            
            Image("logo")
                .resizable()
                .frame(width: 880, height: 880)
            
            ZStack {
                if showLoadingText {
                    Text(loadingSlashScreen)
                        .font(.system(size: 25, weight: .heavy, design: .rounded))
                        .foregroundColor(Color.launch.accent)
                        .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: 210)
        }
        .onAppear {
            showLoadingText.toggle()
        }
    }
}

#Preview {
    LaunchView()
}
