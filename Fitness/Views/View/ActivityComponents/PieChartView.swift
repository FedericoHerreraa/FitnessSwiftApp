
import SwiftUI
import Charts

struct PieChartView: View {
    var body: some View {
        VStack(alignment: .center) {
            Chart {
                ForEach(MockData.revenueStreams) { stream in
                    SectorMark(angle: .value("Stream", stream.value),
//                               outerRadius: stream.name == "Adsenses" ? 180 : 120,
                               innerRadius: .ratio(0.619),
                               angularInset: 2)
                        .foregroundStyle(by: .value("Name", stream.value))
                        .cornerRadius(6)
                }
            }
            .chartLegend(.hidden)
            .frame(width: 150, height: 150)
        }
        .offset(y: 50)
        
    }
}

#Preview {
    PieChartView()
}
