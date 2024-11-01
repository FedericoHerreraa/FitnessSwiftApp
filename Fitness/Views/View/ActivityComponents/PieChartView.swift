
import SwiftUI
import Charts

struct PieChartView: View {
    var width: CGFloat = .infinity
    var height: CGFloat = .infinity
    
    var body: some View {
        VStack(alignment: .center) {
            Chart {
                ForEach(MockData.revenueStreams) { stream in
                    SectorMark(angle: .value("Stream", stream.value),
                               innerRadius: .ratio(0.619),
                               angularInset: 2)
                        .foregroundStyle(by: .value("Name", stream.value))
                        .cornerRadius(6)
                }
            }
            .chartLegend(.hidden)
            .frame(width: width, height: height)
        }
        
    }
}

#Preview {
    PieChartView()
}
