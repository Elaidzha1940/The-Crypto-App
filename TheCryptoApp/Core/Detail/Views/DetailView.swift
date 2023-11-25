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
    
    private let spacing: CGFloat = 30
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Int Detail View for \(coin.name)")
    }
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("")
                    .frame(height: 150)
                
                overViewTitle
                Divider()
                overviewGrid
              
                additionalTitle
                Divider()
                additionalDrid
            }
            .padding()
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

extension DetailView {
    
    private var overViewTitle: some View {
        Text("Overview")
            .font(.system(size: 30, weight: .heavy, design: .default))
            .foregroundColor(Color.theme.accent)
            .frame(width: .infinity, alignment: .leading)
    }
    
    private var additionalTitle: some View {
        
        Text("Additional Details")
            .font(.system(size: 30, weight: .heavy, design: .default))
            .foregroundColor(Color.theme.accent)
            .frame(width: .infinity, alignment: .leading)
    }
    
    private var overviewGrid: some View {
        LazyVGrid(
            columns: columns,
            alignment: .leading,
            spacing: spacing,
            pinnedViews: [],
            content: {
                ForEach(vm.overviewStatistics) { stat in
                    StatisticView(stat: stat)
                }
            })
    }
    
    private var additionalDrid: some View {
        LazyVGrid(
            columns: columns,
            alignment: .leading,
            spacing: spacing,
            pinnedViews: [],
            content: {
                ForEach(vm.additionalStatistics) { stat in
                    StatisticView(stat: stat)
                }
            })
    }
}
