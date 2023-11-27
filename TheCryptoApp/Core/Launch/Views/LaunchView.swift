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
    @State private var loadingSlashScreen: [String] = "Welcome to your portfolio...".map { String($0) }
    @State private var showLoadingText: Bool = false
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    @State private var counter: Int = 0
    @State private var loops: Int = 0
    @Binding var showLaunchView: Bool
    
    var body: some View {
        
        ZStack {
            Color.launch.background
                .ignoresSafeArea()
            
            Image("logo")
                .resizable()
                .frame(width: 970, height: 970)
            
            ZStack {
                if showLoadingText {
                    HStack(spacing: 0) {
                        ForEach(loadingSlashScreen.indices) { index in
                            Text(loadingSlashScreen[index])
                                .font(.system(size: 25, weight: .heavy, design: .serif))
                                .foregroundColor(Color.launch.accent)
                                .transition(AnyTransition.scale.animation(.easeIn))
                                .offset(y: counter == index ? -5 : 0)
                        }
                    }
                    .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: 225)
        }
        .onAppear {
            showLoadingText.toggle()
        }
        .onReceive(timer, perform: { _ in
            withAnimation(.spring) {
                let lastIndex = loadingSlashScreen.count - 1
                if counter == lastIndex {
                    counter = 0
                    loops += 1
                    if loops >= 2 {
                        showLaunchView = false
                    }
                } else {
                    counter += 1
                }
            }
        })
    }
}

#Preview {
    LaunchView(showLaunchView: .constant(true))
}
