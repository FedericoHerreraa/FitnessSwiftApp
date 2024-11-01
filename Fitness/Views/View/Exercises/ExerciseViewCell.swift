

import SwiftUI

struct ExerciseViewCell: View {
    let exercise: ExerciseDetail
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(exercise.name)")
                .font(.title3)
                .fontWeight(.bold)
            Text("\(exercise.description)")
                .font(.body)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    ExerciseViewCell(exercise: Exercises.defaultExercise)
}
