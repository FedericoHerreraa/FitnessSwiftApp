

import SwiftUI
import Charts

struct ActivityView: View {
    @State var isPreviewProfileOpen = false
    
    @Binding var tabSelected: Int
    
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 5) {
                ChartsView()
                
                HStack(spacing: 50) {
                    PieChartView(width: 150, height: 150)
                        .offset(y: 50)
                    PieChartView(width: 150, height: 150)
                        .offset(y: 50)
                }
                
                Spacer()
            }
            .padding(.top, 30)
            .padding(.horizontal, 20)
            .navigationTitle("Actividad")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    ToolBarTitle(title: "Fitness")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    ToolBarIcon(isPreviewProfileOpen: $isPreviewProfileOpen)
                }
            }
            .sheet(isPresented: $isPreviewProfileOpen) {
                ProfilePreview(tabSelected: $tabSelected,
                               previewProfileOpen: $isPreviewProfileOpen)
            }
        }
    }
}

#Preview {
    ActivityView(tabSelected: .constant(0))
}




