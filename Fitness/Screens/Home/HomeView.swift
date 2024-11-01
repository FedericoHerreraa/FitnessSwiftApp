import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @Binding var tabSelected: Int

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    ChartHomeExampleView()
                }
                .frame(width: 370, height: 150)
                .background(Color("CardColor"))
                .cornerRadius(20)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                
                HStack(spacing: 10) {
                    VStack(alignment: .center) {
                        PieChartView(width: 90, height: 90)
                    }
                    .frame(width: 180, height: 150)
                    .background(Color("CardColor"))
                    .cornerRadius(20)
                    .padding(.leading, 20)
                    
                    HStack {
                        PieChartView(width: 90, height: 90)
                    }
                    .frame(width: 180, height: 150)
                    .background(Color("CardColor"))
                    .cornerRadius(20)
                    .padding(.trailing, 20)
                }
                
                
                VStack(alignment: .leading) {
                    TitleButtonSection(
                        title: "Mi Rutina Personalizada",
                        buttonLabel: "Mi Rutina",
                        buttonImage: "pencil.and.list.clipboard",
                        routine: true
                    )
                    .padding(.bottom, 30)

                    TitleButtonSection(
                        title: "Seguimiento de tu Actividad",
                        buttonLabel: "Actividad",
                        buttonImage: "chart.bar",
                        routine: false
                    )
                }
                .padding(.horizontal, 20)
                

                Spacer()
            }
            .navigationTitle("Entrenamiento")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    ToolBarTitle(title: "Fitness")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    ToolBarIcon(isPreviewProfileOpen: $viewModel.isPreviewProfileOpen)
                }
            }
            .sheet(isPresented: $viewModel.isPreviewProfileOpen) {
                ProfilePreview(tabSelected: $tabSelected,
                               previewProfileOpen: $viewModel.isPreviewProfileOpen)
            }
        }
    }
}

#Preview {
    HomeView(tabSelected: .constant(0))
}

struct TitleButtonSection: View {
    var title: String
    var buttonLabel: String
    var buttonImage: String
    var routine: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
            
            NavigationLink(destination:
                            routine
                                ? AnyView(CreateRutineView())
                                : AnyView(StepsFollowView())) {
                HStack(alignment: .center) {
                    Image(systemName: buttonImage)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .foregroundColor(.white)
                        .padding(.leading, 15)
                    
                    Text(buttonLabel)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Image(systemName: "arrow.right")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 15)
                        .foregroundColor(.white)
                        .padding(.leading, 5)
                    
                    Spacer()
                }
                .frame(width: 220, height: 45)
                .background(Color("BrandColor"))
                .cornerRadius(10)
                .shadow(radius: 5)
            }
        }
        .padding(.horizontal, 10)
        .offset(y: 50)
    }
}
