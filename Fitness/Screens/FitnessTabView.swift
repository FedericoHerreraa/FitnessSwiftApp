

import SwiftUI

struct FitnessTabView: View {
    var body: some View {
        TabView {
            Tab("Inicio", systemImage: "house.fill") {
                HomeView()
            }
            
            Tab("Buscar", systemImage: "magnifyingglass") {
                SearchView()
            }
            
            Tab("Actividad", systemImage: "chart.line.uptrend.xyaxis") {
                ActivityView()
            }
            
            Tab("Perfil", systemImage: "person") {
                AccountView()
            }
        }
        .accentColor(Color("BrandColor"))
    }
}

#Preview {
    FitnessTabView()
}
