

import SwiftUI
import Charts

struct ChartHomeExampleView: View {
    var body: some View {
        Chart {
            ForEach(MockData.viewMonths) { viewMonth in
                BarMark(
                    x: .value("Month", viewMonth.date, unit: .month),
                    y: .value("Views", viewMonth.viewCount)
                )
                .foregroundStyle(Color.orange.gradient)
                .cornerRadius(5)
            }
        }
        .frame(height: 135)
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .padding(.horizontal, 10)
    }
}

#Preview {
    ChartHomeExampleView()
}
