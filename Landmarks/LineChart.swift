//
//  LineChart.swift
//  Landmarks
//
//  Created by 潘浩庭 on 29/11/2022.
//

import SwiftUI
import SwiftUICharts

struct LineChart: View {
    var body: some View {
        let chartStyle = ChartStyle(backgroundColor: Color.white, accentColor: Color.red, secondGradientColor: Color.red, textColor: Color.white, legendTextColor: Color.white, dropShadowColor: Color.gray)
        LineView(data: [8,23,54,32,12,37,7,23,43], title: "", legend: "", style: chartStyle)
            .padding()
    }
}

struct LineChart_Previews: PreviewProvider {
    static var previews: some View {
        LineChart()
    }
}
