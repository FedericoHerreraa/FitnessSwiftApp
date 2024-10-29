
import SwiftUI

struct HomeView: View {    
    var body: some View {
        VStack {
            TopTitleView(title: "Fitness")
            
            Image("GymImage")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 200)
                .offset(y: 20)
            
            TitleButtonSection(title: "Rutina 100% Personalizada",
                               buttonLabel: "Crear Rutina ->",
                               buttonImage: "pencil.and.list.clipboard")
                .padding(.bottom, 30)

            
            TitleButtonSection(title: "Seguimiento de tu Actividad",
                               buttonLabel: "Actividad ->",
                               buttonImage: "chart.bar")

            
            Spacer()
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
//    var action
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            
            Button {
                print("Tapped")
            } label: {
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
