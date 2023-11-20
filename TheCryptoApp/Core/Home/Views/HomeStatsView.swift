//  /*
//
//  Project: TheCryptoApp
//  File: HomeStatsView.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.11.2023
//
//  */

import SwiftUI

struct HomeStatsView: View {
    let statistics: [StatisticModel] = [
        StatisticModel(title: "Title", value: "Value", percentageChange: 10),
        StatisticModel(title: "Title", value: "Value"),
        StatisticModel(title: "Title", value: "Value"),
        StatisticModel(title: "Title", value: "Value", percentageChange: -8),
    ]
    
    @Binding var showPortfolio: Bool
    
    var body: some View {
        
        HStack {
            ForEach(statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(width: UIScreen.main.bounds.width,
               alignment: showPortfolio ? .trailing : .leading
        )
    }
}

#Preview {
    HomeStatsView(showPortfolio: .constant(false))
}
