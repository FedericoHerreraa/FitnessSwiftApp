

import SwiftUI

struct ExerciseViewCell: View {
    let exercise: Exercise
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(exercise.name)")
                .font(.title2)
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
