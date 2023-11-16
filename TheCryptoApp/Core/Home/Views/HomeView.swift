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
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                HStack {
                    CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                        .animation(.none)
                        .background(
                        CircleButtonAnimationView(animate: $showPortfolio)
                        )
                    Spacer()
                    Text(showPortfolio ? "Portfolio" : "Life Prices")
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundColor(Color.theme.accent)
                        .animation(.none)

                    Spacer()
                    CircleButtonView(iconName: "chevron.right")
                        .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                        .onTapGesture {
                            withAnimation(.spring()) {
                                showPortfolio.toggle()
                            }
                        }
                }
                .padding(.horizontal)
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
