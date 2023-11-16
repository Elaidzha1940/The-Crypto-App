//  /*
//
//  Project: TheCryptoApp
//  File: HomeView.swift
//  Created by: Elaidzha Shchukin
//  Date:16.11.2023
//
//  */

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                HStack {
                    CircleButtonView(iconName: "info")
                    Spacer()
                    Text("Head")
                    Spacer()
                    CircleButtonView(iconName: "chevron.right")
                }
                Spacer(minLength: 0)
                
            }
        }
    }
}

#Preview {
    NavigationView {
        HomeView()
        //.navigationBarHidden(true)
    }
}
