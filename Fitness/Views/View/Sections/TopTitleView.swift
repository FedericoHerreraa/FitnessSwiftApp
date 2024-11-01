

import SwiftUI

struct ToolBarTitle: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .foregroundColor(.secondary)
    }
}

struct ToolBarIcon: View {
    @Binding var isPreviewProfileOpen: Bool
    
    var body: some View {
        Image(systemName: "person.crop.circle")
            .resizable()
            .scaledToFit()
            .frame(height: 25)
            .foregroundColor(Color("BrandColor"))
            .onTapGesture {
                isPreviewProfileOpen = true
            }
    }
}

#Preview {
    VStack {
            ToolBarTitle(title: "Test title")
            ToolBarIcon(isPreviewProfileOpen: .constant(false))
        }
}

