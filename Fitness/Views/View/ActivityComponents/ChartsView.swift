

import SwiftUI
import Charts

struct ChartsView: View {    
    var body: some View {
        Text("Actividad por Mes")
        
        Text("Total: \(MockData.viewMonths.reduce(0, { $0 + $1.viewCount }))")
            .fontWeight(.semibold)
            .font(.footnote)
            .foregroundColor(.secondary)
            .padding(.bottom, 12)
        
        Chart {
            ForEach(MockData.viewMonths) { viewMonth in
                BarMark(
                    x: .value("Month", viewMonth.date, unit: .month),
                    y: .value("Views", viewMonth.viewCount)
                )
                .foregroundStyle(Color("BrandColor"))
                .cornerRadius(5)
            }
        }
        .frame(height: 230)
        .chartXAxis {
            AxisMarks(values: MockData.viewMonths.map { $0.date }) { date in
                AxisValueLabel(format: .dateTime.month(.narrow))
            }
        }
    }
}

#Preview {
    ChartsView()
}
