//
//  WatchlistChart.swift
//  Landmarks
//
//  Created by 潘浩庭 on 3/12/2022.
//

import SwiftUI
import Charts

struct Item: Identifiable {
    var id = UUID()
    let date: String
    let value: Double
}

struct WatchlistChart: View {
    let swiftColor: UIColor
    let items: [Item] = [
        Item(date: "1", value: 108),
        Item(date: "2", value: 35),
        Item(date: "3", value: 72),
        Item(date: "4", value: 22),
        Item(date: "5", value: 130),
        Item(date: "6", value: 70),
        Item(date: "7", value: 80),
        Item(date: "8", value: 30),
        Item(date: "9", value: 50),
        Item(date: "10", value: 100),
    ]
    var body: some View {
        Chart(items) { item in
            LineMark(x: .value("Date", item.date), y: .value("Price", item.value))
                .foregroundStyle(Color(swiftColor))
            AreaMark(x: .value("Date", item.date), yStart: .value("Price", item.value), yEnd: .value("Stop", item.value-20))
                .foregroundStyle(Color(swiftColor).opacity(0.1))
        }
        .frame(width:70, height: 50)
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
    }
}

struct WatchlistChart_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistChart(swiftColor: UIColor(red: 1, green: 0, blue: 0, alpha: 1))
    }
}
