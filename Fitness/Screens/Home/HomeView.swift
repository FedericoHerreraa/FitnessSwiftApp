import SwiftUI

struct HomeView: View {
    @State var isPreviewProfileOpen = false

    var body: some View {
        NavigationStack {
            VStack {
                Image("fitness-banner-image")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .offset(y: 20)
                
                TitleButtonSection(
                    title: "Rutina 100% Personalizada",
                    buttonLabel: "Crear Rutina ->",
                    buttonImage: "pencil.and.list.clipboard",
                    routine: true
                )
                .padding(.bottom, 30)

                TitleButtonSection(
                    title: "Seguimiento de tu Actividad",
                    buttonLabel: "Actividad ->",
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
                    ToolBarIcon(isPreviewProfileOpen: $isPreviewProfileOpen)
                }
            }
            .sheet(isPresented: $isPreviewProfileOpen) {
                ProfilePreview()
            }
        }
    }
}

#Preview {
    HomeView()
}

struct TitleButtonSection: View {
    var title: String
    var buttonLabel: String
    var buttonImage: String
    var routine: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            
            NavigationLink(destination:
                            routine
                                ? AnyView(CreateRutineView())
                                : AnyView(StepsFollowView())) {
                HStack(alignment: .bottom) {
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
                    
                    Spacer()
                }
                .frame(width: 220, height: 45)
                .background(Color("BrandColor"))
                .cornerRadius(10)
                .shadow(radius: 5)
            }
        }
        .offset(y: 50)
    }
}
