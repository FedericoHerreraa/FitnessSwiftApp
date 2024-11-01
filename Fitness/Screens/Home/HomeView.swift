import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @Binding var tabSelected: Int

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Image("fitness-banner-image")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .offset(y: 20)
                
                TitleButtonSection(
                    title: "Rutina 100% Personalizada",
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
