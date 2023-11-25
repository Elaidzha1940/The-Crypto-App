//  /*
//
//  Project: TheCryptoApp
//  File: DetailView.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.11.2023.
//
//  */

import SwiftUI

struct DetailLoadingView: View {
    @Binding var coin: CoinModel?
    
    var body: some View {
        
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
                
            }
        }
    }
}

struct DetailView: View {
    @StateObject private var vm: DetailViewModel
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Int Detail View for \(coin.name)")
    }
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 20) {
                Text("")
                    .frame(height: 150)
                
                Text("Overview")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .foregroundColor(Color.theme.accent)
                    .frame(width: .infinity, alignment: .leading)
                
                Divider()
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: nil,
                    pinnedViews: [],
                    content: {
                        Text("ff")
                        Text("ff")
                    })
                
                Text("Additional Details")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .foregroundColor(Color.theme.accent)
                    .frame(width: .infinity, alignment: .leading)
                
                Divider()
            }
        }
        .navigationTitle(vm.coin.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(coin: dev.coin)
        }
    }
}
