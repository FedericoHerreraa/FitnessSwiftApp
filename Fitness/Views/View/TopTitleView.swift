

import SwiftUI

struct TopTitleView: View {
    @State var isPreviewProfileOpen = false
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            Spacer()
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .scaledToFit()
                .frame(height: 35)
                .foregroundColor(Color("BrandColor"))
                .onTapGesture {
                    isPreviewProfileOpen = true
                }
        }
        .sheet(isPresented: $isPreviewProfileOpen) {
            ProfilePreview()
        }
        .padding()
        
    }
}

#Preview {
    TopTitleView(title: "Test title")
}

