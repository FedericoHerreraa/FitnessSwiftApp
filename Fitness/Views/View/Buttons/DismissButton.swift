

import SwiftUI

struct DismissButton: View {
    @Binding var isPreviewProfileOpen: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isPreviewProfileOpen = false
            } label: {
                Text("Cerrar")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("BrandColor"))
            }
        }
        .padding()
    }
}

#Preview {
    DismissButton(isPreviewProfileOpen: .constant(false))
}
