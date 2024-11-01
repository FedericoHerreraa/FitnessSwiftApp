

import SwiftUI

struct EmptyState: View {
    var imageName: String
    var text: String
    
    var body: some View {
        ZStack {
            Image(systemName: "dumbbell.fill")
                .resizable()
                .frame(width: 120, height: 60)
                .scaledToFit()
                .offset(y: -70)
            
            Text(text)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    EmptyState(imageName: "TestImage", text: "TestName")
}
