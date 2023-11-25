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
    @StateObject var vm: DetailViewModel
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Int Detail View for \(coin.name)")
    }
    
    var body: some View {
        
        ScrollView {
            Text("Ho")
        }
        .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
