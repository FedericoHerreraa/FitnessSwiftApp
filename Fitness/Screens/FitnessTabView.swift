

import SwiftUI

struct FitnessTabView: View {
    @State var tabSelected: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelected) {
            HomeView(tabSelected: $tabSelected)
                .tabItem {
                    Label("Inicio", systemImage: "house.fill")
                }
                .tag(0)
            
            SearchView(tabSelected: $tabSelected)
                .tabItem {
                    Label("Buscar", systemImage: "magnifyingglass")
                }
                .tag(1)

            ActivityView(tabSelected: $tabSelected)
                .tabItem {
                    Label("Actividad", systemImage: "chart.line.uptrend.xyaxis")
                }
                .tag(2)
            
            AccountView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
                .tag(3)
        }
        .accentColor(Color.orange)
    }
}

#Preview {
    FitnessTabView()
}
