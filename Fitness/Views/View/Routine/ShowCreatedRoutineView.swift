
import SwiftUI

struct ShowCreatedRoutineView: View {
    var muscle: MuscleRoutine
    
    var body: some View {
        Text("Musculo:  \(Text("\(muscle.muscleName)").foregroundStyle(Color("BrandColor")).fontWeight(.bold))")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.primary)
        
        ForEach(muscle.exercises) { exercise in
            HStack(spacing: 5) {
                Image(systemName: "arrow.turn.down.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                
                Text(" \(exercise.name)")
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    ShowCreatedRoutineView(muscle: MuscleExample.muscleExample)
}
