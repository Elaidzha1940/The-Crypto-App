//  /*
//
//  Project: TheCryptoApp
//  File: StatisticView.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.11.2023
//
//  */

import SwiftUI

struct StatisticView: View {
    let stat: StatisticModel

    var body: some View {
        
        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.system(size: 15, weight: .regular, design: .rounded))
                .foregroundColor(Color.theme.secondaryText)
            
            Text(stat.value)
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .foregroundColor(Color.theme.accent)
            
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .rotationEffect(
                        Angle(degrees: (stat.percentageChange ?? 0) >= 0 ? 0 : 180))
                
                Text(stat.percentageChange?.asPresentString() ?? "")
                    .font(.system(size: 15, weight: .bold, design: .rounded))
            }
            .foregroundColor((stat.percentageChange ?? 0) >= 0 ? Color.theme.darkgreen : Color.theme.darkred)
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatisticView(stat: dev.stat1)
                .preferredColorScheme(.dark)
            StatisticView(stat: dev.stat2)
            
            StatisticView(stat: dev.stat3)
                .preferredColorScheme(.dark)
        }
    }
}
