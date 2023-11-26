//  /*
//
//  Project: TheCryptoApp
//  File: ChartView.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.11.2023.
//
//  */

import SwiftUI

struct ChartView: View {
    let data: [Double]
    let maxY: Double
    let minY: Double
    let lineColor: Color
    
    init(coin: CoinModel) {
        data = coin.sparklineIn7D?.price ?? []
        maxY = data.max() ?? 0
        minY = data.min() ?? 0
        
        let priceChange = (data.last ?? 0) - (data.first ?? 0)
        lineColor = priceChange > 0 ? Color.theme.darkgreen : Color.theme.darkred
    }
    
    var body: some View {
        
        VStack {
            chartView
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}

extension ChartView {
    
    private var chartView: some View {
        GeometryReader { geometry in
            Path { path in
                for index in data.indices {
                    
                    let xPosition = geometry.size.width / CGFloat(data.count) *
                    CGFloat(index + 1)
                    
                    let yAxis = maxY - minY
                    
                    let yPosition = (1 - CGFloat((data[index] - minY) / yAxis)) * geometry.size.height
                    
                    if index == 0 {
                        path.move(to: CGPoint(x: xPosition, y: yPosition))
                    }
                    path.addLine(to: CGPoint(x: xPosition, y: yPosition))
                }
            }
            .stroke(lineColor, style: StrokeStyle(lineWidth: 3 , lineCap: .round, lineJoin: .round))
        }
    }
}
