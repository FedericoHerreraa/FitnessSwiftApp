

import SwiftUI

struct ProfilePreview: View {
    @Binding var tabSelected: Int
    @Binding var previewProfileOpen: Bool
    
    var body: some View {
        VStack {
            DismissButton(isPreviewProfileOpen: $previewProfileOpen)
            
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .padding(.top, 30)

            Text("Todavia no tienes una cuenta cargada...")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .padding()
            
            Text("Ir a Iniciar Sesion / Registro")
                .foregroundColor(.blue)
                .font(.body)
                .fontWeight(.bold)
                .onTapGesture {
                    tabSelected = 3
                    previewProfileOpen = false
                }
            
            Spacer()
        }
        
        
    }
}

#Preview {
    ProfilePreview(tabSelected: .constant(0), previewProfileOpen: .constant(false))
}
